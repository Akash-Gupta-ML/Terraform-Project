variable "accesskey" {}

variable "securitykey" {}

variable "ami" {}

variable "i_type" {}

variable "key" {}

variable "ports" {
  type = list(number)
}

variable "vpc_cidr" {}

variable "subnet_cidr" {}
