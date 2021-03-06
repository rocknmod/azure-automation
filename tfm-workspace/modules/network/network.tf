# Terraform network.tf module
# Set up alternate providers for network module
#terraform {
#  required_providers {
#    azurerm = {
#      source                = "hashicorp/azurerm"
#      version               = ">= 3.0.0"
#      configuration_aliases = [azurerm.sec]
#    }
#  }
#}

###############
#create the Ressource Group
###############

resource "azurerm_resource_group" "tf_rg_syd" {
  name     = var.rg_name_syd
  location = var.location
}

###############
#create the virtual network
###############

# Create virtual network in default Australia East

resource "azurerm_virtual_network" "tf_vnet_syd" {
  name                = "vnet_syd0001"
  resource_group_name = azurerm_resource_group.tf_rg_syd.name
  location            = azurerm_resource_group.tf_rg_syd.location
  address_space             = var.network_ip
}

#end of RG resource
