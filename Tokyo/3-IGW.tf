resource "aws_internet_gateway" "tokyo_igw" {
  vpc_id = aws_vpc.tokyovpc.id

  tags = {
    Name    = "tokyo_igw"
  }
}
