This is the Terraform workspace for Azure.

# Terraform Automation Demo Script for this exercise

This is a basic exercise to create a new VPC with the option of choosing the region you want the VPC to be created into.

Regions presented:
- default region is Autralia East
- alternate region is UK South

## Create a Ressource group with a Vnet

I have created a ressource group and Vnet objects Vnet using Terraform.

Execute in CLI directory

```
terraform apply
az group list
az network vnet list
vim module/network/variables.tf #Update Subnet
terraform apply
az group list
az network vnet list
terraform destroy
az group list
az network vnet list

```

## Changelog
terraform_definition-changelog.txt
