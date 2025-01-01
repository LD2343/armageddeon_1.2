# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "nvirginiavpc" {
  cidr_block = "10.131.0.0/16"

  tags = {
    Name = "nvirginiavpc"
  }
}

