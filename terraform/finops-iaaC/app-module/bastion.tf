resource "aws_instance" "bastion_host" {
  ami                         = var.ami
  instance_type               = var.instance_type_micro
  subnet_id                   = aws_subnet.public-1a.id
  key_name                    = var.ec2_pem_file_name
  security_groups             = [aws_security_group.bastion.id]
  associate_public_ip_address = true
  depends_on                  = [module.eks]
  iam_instance_profile        = aws_iam_instance_profile.ec2_instance_profile.name
  tags = {
    Name = "Bastion Host"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo -u ec2-user aws configure set aws_access_key_id ${var.aws_access_key}
              sudo -u ec2-user aws configure set aws_secret_access_key ${var.aws_secret_key}
              sudo -u ec2-user aws configure set default.region eu-central-1
              curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
              chmod +x kubectl
              mv kubectl /usr/local/bin/
              sudo -u ec2-user aws eks update-kubeconfig --name muffin-eks-dev --region eu-central-1
              EOF
}

resource "aws_security_group" "bastion" {
  description = "Allow port 22 for Bastion Host"
  vpc_id      = aws_vpc.vpc-finops.id
  name        = "sec-group-bastion-host"
  ingress {
    description = "SSH access from your IP address"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your public IP or IP range
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh-bastion-host"
  }
}
