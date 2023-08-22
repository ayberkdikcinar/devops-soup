resource "aws_vpc" "vpc-finops" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "vpc-finops"
  }
}

resource "aws_subnet" "private-1a" {
  vpc_id     = aws_vpc.vpc-finops.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private-subnet-1a"
  }
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.vpc-finops.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "private-subnet-1b"
  }
  availability_zone = "eu-central-1b"
}

resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.vpc-finops.id
  cidr_block = "10.0.10.0/24"
  tags = {
    Name = "public-subnet-1a"
  }
  availability_zone = "eu-central-1a"
}

resource "aws_subnet" "public-1b" {
  vpc_id     = aws_vpc.vpc-finops.id
  cidr_block = "10.0.20.0/24"
  tags = {
    Name = "public-subnet-1b"
  }
  availability_zone = "eu-central-1b"
}

resource "aws_internet_gateway" "igw" {
  depends_on = [aws_vpc.vpc-finops]
  vpc_id     = aws_vpc.vpc-finops.id

  tags = {
    Name = "Internet gateway"
  }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-1a.id

  tags = {
    Name = "Nat Gateway"
  }
}

resource "aws_eip" "eip" {
  domain = "vpc"
}

resource "aws_route_table" "public_rt" {

  depends_on = [
    aws_vpc.vpc-finops,
    aws_internet_gateway.igw
  ]

  vpc_id = aws_vpc.vpc-finops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table" "private_rt" {

  depends_on = [
    aws_vpc.vpc-finops,
    aws_nat_gateway.natgw
  ]

  vpc_id = aws_vpc.vpc-finops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "private-route-table"
  }
}

resource "aws_route_table_association" "Public-RT-Association" {
  depends_on     = [aws_internet_gateway.igw]
  count          = 2
  route_table_id = aws_route_table.public_rt.id
  subnet_id      = count.index == 0 ? aws_subnet.public-1a.id : aws_subnet.public-1b.id
}

resource "aws_route_table_association" "Private-RT-Association" {
  depends_on     = [aws_nat_gateway.natgw]
  count          = 2
  route_table_id = aws_route_table.private_rt.id
  subnet_id      = count.index == 0 ? aws_subnet.private-1a.id : aws_subnet.private-1b.id
}
