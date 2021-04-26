provider "aws" {
  region = "us-west-1"
}

module "vpc" {
  source = "../modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tenancy = "default"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_cidr = "192.168.2.0/24"
}

module "ec2" {
  source = "../modules/ec2"
  ec2_count = 1
  ami_id = "ami-0577b787189839998"
  instance_type = "t2.micro"
  subnet_id = "${module.vpc.subnet_id}"
  tag_name = "Productivo EC2-1"
}