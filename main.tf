resource "aws_instance" "webserver1" {
  ami = "ami-0076be86944570bff"
  instance_type = "t2.micro"
  tags = local.common_tags
}

resource "aws_instance" "webserver2" {
  ami = "ami-0aa9ffd4190a83e11"
  instance_type = "t2.micro"
  tags = local.common_tags
   
}
provider "aws" {
  region = "eu-west-2"  # Change to your preferred AWS region
}

locals {
  common_tags = {
   Environment = "Production"
   Project = "IT"
 }
}
