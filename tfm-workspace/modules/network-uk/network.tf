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

resource "azurerm_resource_group" "tf_rg_ldn" {
  name     = var.rg_name_ldn
  location = var.location
}

###############
#create the virtual network
###############

# Create virtual network in alernate UK South

resource "azurerm_virtual_network" "tf_vnet_ldn" {
  name                = "vnet_ldn0001"
  resource_group_name = azurerm_resource_group.tf_rg_ldn.name
  location            = azurerm_resource_group.tf_rg_ldn.location
  address_space             = var.network_ip
}

#end of RG resource
