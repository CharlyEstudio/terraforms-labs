variable "region" {
  default = "us-west-1"
}

variable "ec2_machine" {
  default = "ami-0577b787189839998"
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "subnets_cidr" {
  type = list
  default = ["192.168.10.0/24", "192.168.20.0/24"]
}

variable "azs" {
  type = list
  default = ["us-west-1a", "us-west-1c"]
}