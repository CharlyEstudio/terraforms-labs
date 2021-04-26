provider "aws" {
    region = "us-west-1"
}

resource "aws_instance" "test" {
    ami = "ami-0577b787189839998"
    instance_type = "t2.micro"
}