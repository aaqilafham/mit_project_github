variable "ami" {
  default = "ami-001e4d263e8980c84"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "region" {
  default = "eu-west-2"
}
variable "webservers" {
  type = list
  default = ["web1","web2","web3"]
}



resource "aws_instance" "cerberus" {
  ami           = var.ami
  instance_type = var.instance_type
  count =  length(var.webservers)
}
