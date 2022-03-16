# Terraform network.tf module
# Set up alternate providers for network module
terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 2.7.0"
      configuration_aliases = [aws.sec]
    }
  }
}

###############
#create the VPCs
###############

# Create VPC in default ap-southeast-2

resource "aws_vpc" "vpc_syd0001" {
  cidr_block           = var.VPC_cidrblock
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = { Name = "vpc_syd0001"
  }
}

# Create VPC in alernate eu-west-2

resource "aws_vpc" "vpc_ldn0001" {
  provider             = aws.sec
  cidr_block           = var.VPC_cidrblock
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = { Name = "vpc_ldn0001"
  }
}

#end of VPC resource
