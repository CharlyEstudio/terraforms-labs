resource "aws_vpc" "main1" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags = {
    Name = "Main VPC 1"
  }
}