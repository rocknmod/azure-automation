This is the Ansible workspace for AWS.

# Ansible Automation Demo Script for this exercise

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
