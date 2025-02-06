resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type
  count = 3
  tags = {
    Environment = "Production"
   }
}
