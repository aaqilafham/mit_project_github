resource "aws_vpc" "backend-vpc"{
   cidr_block = "10.0.0.0/16"
   tags = {
    name = "backend-vpc"
  }
}
resource "aws_subnet" "private-subnet"{
   vpc_id = aws_vpc.backend-vpc.id
   cidr_block = "10.0.2.0/24"
   tags = {
     name = "private-subnet"
   }
}

resource "aws_security_group" "backend-sg"{
   name = "backend-sg"
   vpc_id  = aws_vpc.backend-vpc.id
   ingress {
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
     from_port = 8080
     to_port = 8080
     protocol = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
  }

}
