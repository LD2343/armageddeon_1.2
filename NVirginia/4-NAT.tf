resource "aws_eip" "nvirginia_nat_eip" {
  vpc = true

  tags = {
    Name = "nvirginia_nat_eip"
  }
}

resource "aws_nat_gateway" "nvirginia_nat" {
  allocation_id = aws_eip.nvirginia_nat_eip.id
  subnet_id     = aws_subnet.public-us-east-1a.id

  tags = {
    Name = "nvirginia_nat"
  }

  depends_on = [aws_internet_gateway.nvirginia_igw]
}
