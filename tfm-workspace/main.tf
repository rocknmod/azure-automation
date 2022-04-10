# Terraform main file defines providers on 2 regions and modules
# calling module for deploying network and VM instance

provider "azurerm" {
  features {}
  profile = var.profile
  location  = var.region-pri
  alias   = "region-pri"
}
provider "azurerm" {
  features {}
  profile = var.profile
  location  = var.region-sec
  alias   = "region-sec"
}

module "network" {
  source = "./modules/network"
  providers = {
    azurerm.sec = azurerm.region-sec
  }
  location = var.location
  rg_name  = var.rg_name
}
