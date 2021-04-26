resource "aws_instance" "server1" {
  ami = "${var.ami_id}"
  instance_type = "${var.ami_type}"
  # count = 3
  count = "${length(var.subnet1_private_ip)}"
  associate_public_ip_address = true
  subnet_id = "${aws_subnet.subnet1.id}"
  vpc_security_group_ids = [
    "${aws_security_group.sg_1.id}",
    "${aws_security_group.sg_2.id}"
  ]
  # private_ip = "${var.ec2_private_ip_1}"
  private_ip = "${element(var.subnet1_private_ip, count.index)}"
  key_name = "class_key1"
  user_data = "${file("scripts/userdata.sh")}"

  tags = {
    Name = "server-${count.index + 1}"
    Owner = "terraform"
    Env = "dev"
  }
}

# resource "aws_instance" "server2" {
#   ami = "ami-0577b787189839998"
#   instance_type = "t2.micro"
#   count = 1
#   associate_public_ip_address = true
#   subnet_id = "${aws_subnet.subnet1.id}"
#   vpc_security_group_ids = [
#     "${aws_security_group.sg_1.id}",
#     "${aws_security_group.sg_2.id}"
#   ]
#   private_ip = "10.0.10.11"
#   key_name = "${aws_key_pair.key_class2.id}"
#   user_data = <<EOF
# #!/bin/bash
# export PATH=$PATH:/usr/local/bin
# sudo -i
# exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
# apt-get install -y httpd
# exho "<html><h1>Hola, Excelente ejercicio...<p></p><p>Continuamos!!!</p></h1></html>" > /var/www/html/index.html
# systemctl start htppd
# systemctl enable httpd
# echo "Script terminado!" > hola.txt
# EOF

#   tags = {
#     Name = "server2"
#     Owner = "terraform"
#     Env = "dev"
#   }
# }