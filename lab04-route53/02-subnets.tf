resource "aws_subnet" "subnet1" {
  vpc_id = "${aws_vpc.main_route53.id}"
  cidr_block = "192.168.10.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = "${aws_vpc.main_route53.id}"
  cidr_block = "192.168.20.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name = "Subnet-2"
  }
}