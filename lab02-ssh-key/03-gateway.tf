resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main1.id}"

  tags = {
    Name = "Gateway Main"
  }
}

resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main1.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "table_subnet1" {
  subnet_id = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "table_subnet2" {
  subnet_id = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.r.id}"
}