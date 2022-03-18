# Ansible Automation Demo Script

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
ansible-playbook playbook-deploy.yaml -v -e state=abs
ent
aws_vpc
aws_vpc --region eu-west-2
```
