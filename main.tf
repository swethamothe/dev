terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "remote" {
    organization = "tafzs"
    workspaces {
      name = "dev"    
    }
  }
}


provider "aws" {
	region  = var.region
}
    
resource "aws_instance" "main" {
	ami           = var.ami
	instance_type = var.instance_type
}

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet
}
