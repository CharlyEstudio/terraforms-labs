resource "aws_instance" "server1" {
  ami = "${var.ec2_machine}"
  instance_type = "${var.ec2_type}"
  vpc_security_group_ids = ["${aws_security_group.route_allow_http_ssh.id}"]
  subnet_id = "${aws_subnet.subnet1.id}"
  associate_public_ip_address = true
  private_ip = "192.168.10.10"
  key_name = "${aws_key_pair.sample_key_name.id}"
  depends_on = ["aws_internet_gateway.gw"]
  user_data = "${file("scripts/userdata.sh")}"

  tags = {
    Name = "Server1"
    Env = "dev"
  }
}

resource "aws_instance" "server2" {
  ami = "${var.ec2_machine}"
  instance_type = "${var.ec2_type}"
  vpc_security_group_ids = ["${aws_security_group.route_allow_http_ssh.id}"]
  subnet_id = "${aws_subnet.subnet1.id}"
  associate_public_ip_address = true
  private_ip = "192.168.10.11"
  key_name = "${aws_key_pair.sample_key_name.id}"
  depends_on = ["aws_internet_gateway.gw"]
  user_data = "${file("scripts/userdata.sh")}"

  tags = {
    Name = "Server2"
    Env = "dev"
  }
}