resource "aws_subnet" "subnet1" {
  vpc_id = "${aws_vpc.main1.id}"
  cidr_block = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "${var.subnet1_zone_1c}"

  tags = {
    Name = "Subnet 1 - ${var.subnet1_zone_1c}"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = "${aws_vpc.main1.id}"
  cidr_block = "${var.subnet2_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "${var.subnet2_zone_1a}"

  tags = {
    Name = "Subnet 2 - ${var.subnet2_zone_1a}"
  }
}