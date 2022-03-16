#Create VPC in ap-southeast-2
terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 2.7.0"
      configuration_aliases = [aws.sec]
    }
  }
}
resource "aws_vpc" "vpc_0001" {
  provider             = aws.sec
  cidr_block           = "10.0.0.0/24"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "my-first-vpc"
  }
}
