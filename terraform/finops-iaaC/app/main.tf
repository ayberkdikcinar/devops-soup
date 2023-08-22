provider "aws" {
  region     = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "aws_access_key" {
  description = "access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "secret key"
  type        = string
  sensitive   = true
}

module "app_1" {
  source         = "../app-module"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}
