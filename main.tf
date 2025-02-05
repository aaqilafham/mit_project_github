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

locals {
  common_tags = {
   Environment = "Production"
   Project = "IT"
 }
}

resource "aws_s3_bucket" "lseg" {
  acl = "private"
  bucket = local.bucket-prefix 
}

resource "random_string" "lseg-pt" {
  length = 6
  special = false
  upper =  false
}
variable "project" {
   default = "it"
}
locals {
  bucket-prefix = "${var.project}-${random_string.lseg-pt.id}-bucket"
}

