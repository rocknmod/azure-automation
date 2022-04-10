# variables for main.tf

variable "region-pri" {
  type    = string
  default = "Australia East"
}

variable "region-sec" {
  type    = string
  default = "UK South"
}

variable "rg_name_syd" {
  type    = string
  default = "terraform_rg_syd"
}
variable "rg_name_ldn" {
  type    = string
  default = "terraform_rg_ldn"
}
