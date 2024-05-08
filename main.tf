terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.aws_region
}

resource "aws_vpc" "main" {
    cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ConnorWed080524"
    creator = var.creator
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "ConnorGatewayWed080524"
    creator = var.creator
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "ConnorSubNetWed080524"
    creator = var.creator
  }
}