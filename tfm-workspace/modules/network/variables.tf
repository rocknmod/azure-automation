# variables.tf for network.tf module

variable "location" {
  description = "Azure location"
  type        = string
  default     = null
}

variable "region_pri" {
  description = "Australia East"
  type        = string
  default     = "australiaeast"
}

variable "region_sec" {
  description = "UK South"
  type        = string
  default     = "uksouth"
}

variable "rg_name_syd" {
  type    = string
  default = "trf_rg_syd"
}

variable "rg_name_ldn" {
  type    = string
  default = "trf_rg_ldn"
}

variable "network_name" {
  type    = string
  default = "VNet"
}

variable "network_ip" {
  type    = list(string)
  default = ["172.19.0.0/17"]
}
