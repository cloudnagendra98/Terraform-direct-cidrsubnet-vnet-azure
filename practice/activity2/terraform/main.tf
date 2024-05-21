terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.14.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "whiskybucket" {
  bucket = "my-whisky-first-bucket"

  tags = {
    Name        = "whisky bucket"
    Environment = "Dev"
  }
}