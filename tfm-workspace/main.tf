# Terraform main file defines providers on 2 regions and modules
# calling module for deploying network and VM instance

provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"
  location  = var.location
}
