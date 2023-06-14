provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_access_key
  region     = var.region
}

variable "region" {
  description = "region"
}
variable "secret_access_key" {
  description = "secret_access_key"
}
variable "access_key" {
  description = "access_key"
}
variable "availability_zone" {
  description = "availability_zone"
}

resource "aws_vpc" "my-first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "my-public-subnet" {
  vpc_id            = aws_vpc.my-first-vpc.id
  availability_zone = var.availability_zone
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name = "dev-subnet-public"
  }
}

resource "aws_internet_gateway" "igw" {
  depends_on = [aws_vpc.my-first-vpc]
  vpc_id     = aws_vpc.my-first-vpc.id
}

resource "aws_route_table" "Public-Subnet-RT" {
  depends_on = [
    aws_vpc.my-first-vpc,
    aws_internet_gateway.igw
  ]

  # VPC ID
  vpc_id = aws_vpc.my-first-vpc.id

  # NAT Rule
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Route Table for Internet Gateway"
  }
}

resource "aws_route_table_association" "Public-RT-Association" {
  depends_on     = [aws_internet_gateway.igw]
  route_table_id = aws_route_table.Public-Subnet-RT.id
  subnet_id      = aws_subnet.my-public-subnet.id
}

resource "aws_security_group" "allow-ports" {
  name        = "allow_web_traffic"
  description = "Allow Web inbound traffic"
  vpc_id      = aws_vpc.my-first-vpc.id

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.my-public-subnet.id
  private_ips     = ["10.0.1.20"]
  security_groups = [aws_security_group.allow-ports.id]

}

# # 8. Assign an elastic IP to the network interface created in step 7
resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = aws_network_interface.web-server-nic.id
  associate_with_private_ip = "10.0.1.20"
  depends_on                = [aws_internet_gateway.igw]
}


resource "aws_instance" "web-server" {
  ami               = "ami-0261755bbcb8c4a84"
  instance_type     = "t2.micro"
  availability_zone = var.availability_zone
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web-server-nic.id
  }
  tags = {
    Name = "web-server"
  }

  user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo apt install -y nginx
                sudo systemctl enable nginx
                sudo systemctl start nginx
                EOF

}

output "server_public_ip" {
  value = aws_eip.one.public_ip
}
