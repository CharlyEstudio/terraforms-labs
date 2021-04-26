resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main1.id}"

  tags = {
    Name = "VPC Main"
  }
}

resource "aws_route_table" "web-public-rt" {
  vpc_id = "${aws_vpc.main1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "Public Subnet RT"
  }
}

resource "aws_route_table_association" "public-subnet" {
  count = "${length(var.subnets_cidr)}"
  subnet_id = "${element(aws_subnet.subnets.*.id, count.index)}"
  route_table_id = "${aws_route_table.web-public-rt.id}"
}