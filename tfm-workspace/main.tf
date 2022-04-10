# Terraform main file defines providers on 2 regions and modules
# calling module for deploying network and VM instance

provider "azurerm" {
  features {}
}

module "network-au" {
  source = "./modules/network"
  location  = var.region_pri
}

module "network-uk" {
  source = "./modules/network-uk"
  location  = var.region_sec
}
