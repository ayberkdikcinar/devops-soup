provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region = "eu-central-1"
}

resource "aws_vpc" "my-first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags={
    Name = "dev"
  }
}

resource "aws_subnet" "my-first-subnet"{
    vpc_id = "${aws_vpc.my-first-vpc.id}"
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "dev-subnet"
    }
}

resource "aws_instance" "my-first-ec2" {
  ami = "ami-0abcdef1234567890"
  count = 5
  instance_type = "m2.micro"
  tags = {
    Name= "web-server"
  }
}