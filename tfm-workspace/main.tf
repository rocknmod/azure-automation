# Terraform main file defines providers on 2 regions and modules
# calling module for deploying network and VM instance

provider "azurerm" {
  features {}
  location = var.region-pri
  alias    = "region-pri"
}
provider "azurerm" {
  features {}
  location = var.region-sec
  alias    = "region-sec"
}

module "network" {
  source = "./modules/network"
  providers = {
    azurerm.sec = azurerm.region-sec
  }
  region-pri  = var.region-pri
  region-sec  = var.region-sec
  rg_name_ldn = var.rg_name_ldn
  rg_name_syd = var.rg_name_syd
}
