variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "eu-central-1"
}

variable "ami" {
  type    = string
  default = "ami-0e00e602389e469a3"
}

variable "instance_type_micro" {
  type    = string
  default = "t2.micro"
}

variable "instance_type_small" {
  type    = string
  default = "t3.small"
}

variable "ec2_pem_file_name" {
  type    = string
  default = "ec2-key-pair"
}

variable "eks-cluster-name" {
  type    = string
  default = "muffin-eks-dev"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}



