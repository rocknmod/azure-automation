This is the Ansible workspace for Azure.

# Ansible Automation Demo Script for this exercise

Regions presented:
- default region is Autralia East
- alternate region is UK South

## Create a Ressource group with a Vnet

I have created a ressource group and Vnet objects Vnet using Ansible.

Execute in CLI directory

```
ansible-playbook playbook-deploy.yaml -v
az group list
az network vnet list
vim azure-setup.yaml #Update attributes
ansible-playbook playbook-deploy.yaml -v
az group list
az network vnet list
ansible-playbook playbook-deploy.yaml -v -e state=absent
az group list
az network vnet list
```

## Changelog
ansible_definition-changelog.txt
