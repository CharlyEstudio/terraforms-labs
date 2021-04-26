resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main_route53.id}"

  tags = {
    Name = "VPC Main"
  }
}

resource "aws_route_table" "web-public-rt" {
  vpc_id = "${aws_vpc.main_route53.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "Public Subnet RT"
  }
}

resource "aws_route_table_association" "public-subnet1" {
  subnet_id = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.web-public-rt.id}"
}

resource "aws_route_table_association" "public-subnet2" {
  subnet_id = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.web-public-rt.id}"
}