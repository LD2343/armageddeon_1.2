# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "tokyovpc" {
  cidr_block = "10.130.0.0/16"

  tags = {
    Name = "tokyovpc"
  }
}

