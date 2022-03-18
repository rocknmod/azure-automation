This is the Terraform workspace for AWS.

# Terraform Automation Demo Script for this exercise

This is a basic exercise to create a new VPC with the option of choosing the region you want the VPC to be created into.

Regions presented:
- default region is ap-southeast-2
- alternate region is eu-west-2

## Create a single object (VPC)

I have created a single object VPC using Ansible.

Execute in CLI directory

```
ansible-playbook playbook-deploy.yaml -v
aws_vpc
aws_vpc --region eu-west-2
vim aws-setup.yaml #Update attributes
ansible-playbook playbook-deploy.yaml -v
aws_vpc
aws_vpc --region eu-west-2
ansible-playbook playbook-deploy.yaml -v -e state=absent
aws_vpc
aws_vpc --region eu-west-2
```

## Changelog
ansible_definition-changelog.txt
