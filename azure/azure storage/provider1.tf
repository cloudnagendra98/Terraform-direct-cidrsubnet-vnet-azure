terraform {
    required_providers {
      aws = { 
        source = "hashicorp/aws"
        version = "2.33.0"
      }
      azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
      }
    }
}

provider "aws" { 
  region = "us-west-2"
}

provider " azurem"{
    features {

    }
}

resource "aws_instance", "patel" {
    ami = "ami-********"
    tags = {
      Name = "bose"
    }
    key_name = "my_id_rsa"
    vpc_security_group_ids = ["sg-********"]
    instance_type = "t2.micro"
}