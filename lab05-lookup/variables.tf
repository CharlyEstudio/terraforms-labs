variable "region" {
  default = "us-west-1"
}

variable "ec2_ami" {
  type = map
  default = {
    us-west-1 = "ami-0577b787189839998",
    us-west-2 = "ami-0518bb0e75d3619ca"
  }
}

variable "ec2_type" {
  default = "t2.micro"
}