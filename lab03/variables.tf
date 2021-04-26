variable "region" {
  default = "us-west-1"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "subnets_cidr" {
  type = list
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "azs" {
  type = list
  default = ["us-west-1a", "us-west-1c"]
}