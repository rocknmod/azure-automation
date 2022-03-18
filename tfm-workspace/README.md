This is the Terraform workspace for AWS.

# Terraform Automation Demo Script for this exercise

This is a basic exercise to create a new VPC with the option of choosing the region you want the VPC to be created into.

Regions presented:
- default region is ap-southeast-2
- alternate region is eu-west-2

## Create a single object (VPC)

I have created a single object VPC using Terraform.

Execute in CLI directory

```
terraform apply
aws_vpc
aws_vpc --region eu-west-2
vim module/network/variables.tf #Update prefix
terraform apply
aws_vpc
aws_vpc --region eu-west-2
terraform destroy
aws_vpc
aws_vpc --region eu-west-2
```

## Changelog
terraform_definition-changelog.txt
