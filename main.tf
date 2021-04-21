terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-03d64741867e7bb94"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
