###########################################################
#########	Create new VPC in 2 regions         #######
###########################################################


tfm-workspace$ terraform apply

module.network.aws_vpc.vpc_0001: Refreshing state... [id=vpc-0015fd38a31c35824]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create
  - destroy

Terraform will perform the following actions:

  # module.network.aws_vpc.vpc_0001 will be destroyed
  # (because aws_vpc.vpc_0001 is not in configuration)
  - resource "aws_vpc" "vpc_0001" {
      - arn                              = "arn:aws:ec2:eu-west-2:048336976279:vpc/vpc-0015fd38a31c35824" -> null
      - assign_generated_ipv6_cidr_block = false -> null
      - cidr_block                       = "10.0.0.0/24" -> null
      - default_network_acl_id           = "acl-09e5ae6b5994bb83b" -> null
      - default_route_table_id           = "rtb-0d7180c85ff22e7c9" -> null
      - default_security_group_id        = "sg-0b91e1cefeb2f2310" -> null
      - dhcp_options_id                  = "dopt-0ae772ada40e57940" -> null
      - enable_classiclink               = false -> null
      - enable_classiclink_dns_support   = false -> null
      - enable_dns_hostnames             = true -> null
      - enable_dns_support               = true -> null
      - id                               = "vpc-0015fd38a31c35824" -> null
      - instance_tenancy                 = "default" -> null
      - ipv6_netmask_length              = 0 -> null
      - main_route_table_id              = "rtb-0d7180c85ff22e7c9" -> null
      - owner_id                         = "048336976279" -> null
      - tags                             = {
          - "Name" = "my-first-vpc"
        } -> null
      - tags_all                         = {
          - "Name" = "my-first-vpc"
        } -> null
    }

  # module.network.aws_vpc.vpc_ldn0001 will be created
  + resource "aws_vpc" "vpc_ldn0001" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "VPC London"
        }
      + tags_all                             = {
          + "Name" = "VPC London"
        }
    }

  # module.network.aws_vpc.vpc_syd0001 will be created
  + resource "aws_vpc" "vpc_syd0001" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)

# Terraform network.tf module
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "VPC Sydney"
        }
      + tags_all                             = {
          + "Name" = "VPC Sydney"
        }
    }

Plan: 2 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.network.aws_vpc.vpc_syd0001: Creating...
module.network.aws_vpc.vpc_0001: Destroying... [id=vpc-0015fd38a31c35824]
module.network.aws_vpc.vpc_ldn0001: Creating...
module.network.aws_vpc.vpc_0001: Destruction complete after 1s
module.network.aws_vpc.vpc_syd0001: Still creating... [10s elapsed]
module.network.aws_vpc.vpc_syd0001: Creation complete after 11s [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_ldn0001: Still creating... [10s elapsed]
module.network.aws_vpc.vpc_ldn0001: Creation complete after 16s [id=vpc-011e294437415cfb1]

Apply complete! Resources: 2 added, 0 changed, 1 destroyed.



###########################################################
#######     Change tag name for existing VPC  	  #########
###########################################################


tfm-workspace$ terraform apply

module.network.aws_vpc.vpc_syd0001: Refreshing state... [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_ldn0001: Refreshing state... [id=vpc-011e294437415cfb1]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # module.network.aws_vpc.vpc_ldn0001 will be updated in-place
  ~ resource "aws_vpc" "vpc_ldn0001" {
        id                               = "vpc-011e294437415cfb1"
      ~ tags                             = {
          ~ "Name" = "VPC London" -> "vpc_ldn0001"
        }
      ~ tags_all                         = {
          ~ "Name" = "VPC London" -> "vpc_ldn0001"
        }
        # (15 unchanged attributes hidden)
    }

  # module.network.aws_vpc.vpc_syd0001 will be updated in-place
  ~ resource "aws_vpc" "vpc_syd0001" {
        id                               = "vpc-05cc3d1bc4107fd78"
      ~ tags                             = {
          ~ "Name" = "VPC Sydney" -> "vpc_syd0001"
        }
      ~ tags_all                         = {
          ~ "Name" = "VPC Sydney" -> "vpc_syd0001"
        }
        # (15 unchanged attributes hidden)
    }

Plan: 0 to add, 2 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.network.aws_vpc.vpc_syd0001: Modifying... [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_syd0001: Modifications complete after 1s [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_ldn0001: Modifying... [id=vpc-011e294437415cfb1]
module.network.aws_vpc.vpc_ldn0001: Modifications complete after 4s [id=vpc-011e294437415cfb1]

Apply complete! Resources: 0 added, 2 changed, 0 destroyed. 

#################################################
#######		Destroy Environment	#########
#################################################

tfm-workspace$ terraform destroy

module.network.aws_vpc.vpc_syd0001: Refreshing state... [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_ldn0001: Refreshing state... [id=vpc-011e294437415cfb1]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.network.aws_vpc.vpc_ldn0001 will be destroyed
  - resource "aws_vpc" "vpc_ldn0001" {
      - arn                              = "arn:aws:ec2:eu-west-2:048336976279:vpc/vpc-011e294437415cfb1" -> null
      - assign_generated_ipv6_cidr_block = false -> null
      - cidr_block                       = "10.0.0.0/16" -> null
      - default_network_acl_id           = "acl-01e90ff629a207d2b" -> null
      - default_route_table_id           = "rtb-00965cc123af8244f" -> null
      - default_security_group_id        = "sg-041a0539e77e0232e" -> null
      - dhcp_options_id                  = "dopt-0ae772ada40e57940" -> null
      - enable_classiclink               = false -> null
      - enable_classiclink_dns_support   = false -> null
      - enable_dns_hostnames             = true -> null
      - enable_dns_support               = true -> null
      - id                               = "vpc-011e294437415cfb1" -> null
      - instance_tenancy                 = "default" -> null
      - ipv6_netmask_length              = 0 -> null
      - main_route_table_id              = "rtb-00965cc123af8244f" -> null
      - owner_id                         = "048336976279" -> null
      - tags                             = {
          - "Name" = "vpc_ldn0001"
        } -> null
      - tags_all                         = {
          - "Name" = "vpc_ldn0001"
        } -> null
    }

  # module.network.aws_vpc.vpc_syd0001 will be destroyed
  - resource "aws_vpc" "vpc_syd0001" {
      - arn                              = "arn:aws:ec2:ap-southeast-2:048336976279:vpc/vpc-05cc3d1bc4107fd78" -> null
      - assign_generated_ipv6_cidr_block = false -> null
      - cidr_block                       = "10.0.0.0/16" -> null
      - default_network_acl_id           = "acl-014ffdc00118d612e" -> null
      - default_route_table_id           = "rtb-036a96cc3dd434996" -> null
      - default_security_group_id        = "sg-01fd1ecdfd65ef20b" -> null
      - dhcp_options_id                  = "dopt-0f89849eddd5cdc17" -> null
      - enable_classiclink               = false -> null
      - enable_classiclink_dns_support   = false -> null
      - enable_dns_hostnames             = true -> null
      - enable_dns_support               = true -> null
      - id                               = "vpc-05cc3d1bc4107fd78" -> null
      - instance_tenancy                 = "default" -> null
      - ipv6_netmask_length              = 0 -> null
      - main_route_table_id              = "rtb-036a96cc3dd434996" -> null
      - owner_id                         = "048336976279" -> null
      - tags                             = {
          - "Name" = "vpc_syd0001"
        } -> null
      - tags_all                         = {
          - "Name" = "vpc_syd0001"
        } -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.network.aws_vpc.vpc_syd0001: Destroying... [id=vpc-05cc3d1bc4107fd78]
module.network.aws_vpc.vpc_syd0001: Destruction complete after 1s
module.network.aws_vpc.vpc_ldn0001: Destroying... [id=vpc-011e294437415cfb1]
module.network.aws_vpc.vpc_ldn0001: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.
