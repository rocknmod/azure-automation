#Create VPC in ap-southeast-2
resource "aws_vpc" "vpc_0001" {
  provider             = aws.region-master
  cidr_block           = "10.0.0.0/24"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "my-first-vpc"
  }
}
