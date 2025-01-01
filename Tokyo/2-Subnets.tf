#These are   for  public

resource "aws_subnet" "public-sn-tokyo-1a-01" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-sn-tokyo-1a-01"
  }
}

/*resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1c"
  }
}


resource "aws_subnet" "public-ap-northeast-1d" {
  vpc_id                  = aws_vpc.tokyovpc.id
  cidr_block              = "10.130.4.0/24"
  availability_zone       = "ap-northeast-1d"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-ap-northeast-1d"
  }
}*/

#these are for private
resource "aws_subnet" "private-sn-tokyo-1c-01" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.11.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "private-sn-tokyo-1c-01"
  }
}

resource "aws_subnet" "private-sn-tokyo-1d-01" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.12.0/24"
  availability_zone = "ap-northeast-1d"

  tags = {
    Name    = "private-sn-tokyo-1d-01"
  }
}


resource "aws_subnet" "private-sn-tokyo-1d-02" {
  vpc_id            = aws_vpc.tokyovpc.id
  cidr_block        = "10.130.13.0/24"
  availability_zone = "ap-northeast-1d"

  tags = {
    Name    = "private-sn-tokyo-1d-02"
  }
}
