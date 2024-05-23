terraform {
  required_providers {
    aws = {
      version = ">=5.50.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">=1.8.3"
}

provider "aws" {
  region = "us-west-1"

}