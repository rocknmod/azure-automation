# variables for main.tf

variable "location" {
	type = string
	default = "Australia East"
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
