# terraform main file
# calling module for deploying network and ec2 instance

module "network" {
  source = "./modules/network"
}
