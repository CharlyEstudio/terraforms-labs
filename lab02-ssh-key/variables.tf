variable "region" {
  description = "Region de la Cuenta"
  # default = "us-west-1"
}

variable "vpc_cidr" {
  description = "VPC cidr"
  # default = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  description = "Subnet 1 cidr"
  # default = "10.0.10.0/24"
}

variable "subnet2_cidr" {
  description = "Subnet 2 cidr"
  # default = "10.0.20.0/24"
}

variable "subnet1_zone_1c" {
  description = "Zona Disponible 1C de la Region Subnet 1"
  # default = "us-west-1c"
}

variable "subnet2_zone_1a" {
  description = "Zona Disponible 1A de la Region Subnet 2"
  # default = "us-west-1a"
}

variable "ami_id" {
  description = "AMI id para Amazon Linux"
  # default = "ami-0577b787189839998"
}

variable "ami_type" {
  description = "Tipo de Instancia"
  # default = "t2.micro"
}

variable "ec2_private_ip_1" {
  description = "IP Privada de la Instancia EC 1"
  # default = "10.0.10.10"
}

variable "subnet1_private_ip" {
  description = "Lista de IP para Subnet 1"
  type = list
  default = ["10.0.10.10", "10.0.10.11"]
}