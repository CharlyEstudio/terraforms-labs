resource "aws_vpc" "main_route53" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Main 1"
    Location = "US"
  }
}