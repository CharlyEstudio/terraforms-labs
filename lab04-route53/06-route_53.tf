resource "aws_route53_zone" "dev" {
  name = "dev.usuarioroot.com"
  force_destroy = false

  vpc {
    vpc_id = "${aws_vpc.main_route53.id}"
  }
}

resource "aws_route53_record" "server1" {
  zone_id = "${aws_route53_zone.dev.zone_id}"
  name = "server1.dev.usuarioroot.com"
  type = "A"
  ttl = "300"
  records = [ "${aws_instance.server1.private_ip}" ]
}

resource "aws_route53_record" "server2" {
  zone_id = "${aws_route53_zone.dev.zone_id}"
  name = "server2.dev.usuarioroot.com"
  type = "A"
  ttl = "300"
  records = [ "${aws_instance.server2.private_ip}" ]
}

resource "aws_route53_record" "my_elb_name" {
  zone_id = "${aws_route53_zone.dev.zone_id}"
  name = "mylb.dev.usuario.root.com"
  type = "CNAME"
  ttl = "300"
  records = [ "${aws_elb.my_elb.dns_name}" ]
}