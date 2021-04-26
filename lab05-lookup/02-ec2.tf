resource "aws_instance" "web1" {
  ami = "${lookup(var.ec2_ami, var.region)}"
  instance_type = "${var.ec2_type}"

  tags = {
    Name = "web1"
  }
}