variable "profile" {
  type    = string
  default = "default"
}

variable "region-master" {
  type        = string
  default     = "ap-southeast-2"
  description = "Sydney"
}

variable "region-worker" {
  type        = string
  default     = "eu-west-2"
  description = "London"
}
