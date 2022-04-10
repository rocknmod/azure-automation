# variables.tf for network.tf module

variable "location" {
	description = "Azure location"
	type = string
	default = null
}

variable "rg_name" {
	type = string
	default = null
}

variable "network_name" {
	type = string
	default = "VNet"
}

variable "network_ip" {
	type = list(string)
	default = ["172.19.0.0/17"]
}
