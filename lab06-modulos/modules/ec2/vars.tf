variable "ec2_count" {
  default = 1
}

variable "ami_id" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {}

variable "sg_id" {}

variable "tag_name" {}