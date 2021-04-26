resource "aws_subnet" "subnets" {
  count = "${length(var.azs)}"
  vpc_id = "${aws_vpc.main1.id}"
  cidr_block = "${element(var.subnets_cidr, count.index)}"
  availability_zone = "${element(var.azs, count.index)}"

  tags = {
    Name = "Subnet-${count.index + 1}"
  }
}