# Terraform main file defines providers on 2 regions and modules
# calling module for deploying network and ec2 instance

provider "aws" {
  profile = var.profile
  region  = var.region-master
  alias   = "region-master"
}
provider "aws" {
  profile = var.profile
  region  = var.region-worker
  alias   = "region-worker"
}

module "network" {
  source = "./modules/network"
  providers = {
    aws.sec = aws.region-worker
  }
}
