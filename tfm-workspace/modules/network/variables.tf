# variables.tf for network.tf

variable "region-master" {
  description = "Main region for deployment"
  default     = "ap-southeast-2"
}

variable "availabilityZone" {
  description = "picking the right availability zone in your region"
  default     = "us-east-2a"
}
