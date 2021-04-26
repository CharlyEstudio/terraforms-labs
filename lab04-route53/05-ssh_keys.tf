resource "aws_key_pair" "sample_key_name" {
  key_name = "Sample Key"
  public_key = "${file("pems/class_key.pem.pub")}"
}