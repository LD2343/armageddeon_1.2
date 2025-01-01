resource "aws_internet_gateway" "nvirginia_igw" {
  vpc_id = aws_vpc.nvirginiavpc.id

  tags = {
    Name    = "nvirginia_igw"
  }
}
