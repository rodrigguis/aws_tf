terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">=0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Primeira Instancia"
  }
}


