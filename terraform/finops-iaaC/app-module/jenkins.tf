resource "aws_instance" "jenkins_master" {
  ami                         = var.ami
  instance_type               = var.instance_type_micro
  subnet_id                   = aws_subnet.public-1b.id
  key_name                    = var.ec2_pem_file_name
  security_groups             = [aws_security_group.jenkins-master-sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "Jenkins Master"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
              rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
              yum upgrade
              dnf install git -y
              dnf install -y docker
              chmod 666 /var/run/docker.sock
              systemctl enable docker
              systemctl start docker
              dnf install java-11-amazon-corretto -y
              yum install jenkins -y
              systemctl enable jenkins
              systemctl start jenkins
              EOF
}

resource "aws_security_group" "jenkins-master-sg" {
  description = "Security group for Jenkins master"
  vpc_id      = aws_vpc.vpc-finops.id
  name        = "sec-group-jenkins-master"
  ingress {
    description = "SSH access from bastion host"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #security_groups = [aws_security_group.bastion.id]
  }

  ingress {
    description = "8080 access from bastion host & load balancer"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "jenkins-master"
  }
}
