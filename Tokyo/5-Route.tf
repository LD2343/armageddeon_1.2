resource "aws_route_table" "tokyo_private" {
  vpc_id = aws_vpc.tokyovpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyo_nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "tokyo_private"
  }
}

resource "aws_route_table" "tokyo_public" {
  vpc_id = aws_vpc.tokyovpc.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyo_igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "tokyo_public"
  }
}

resource "aws_route_table_association" "private-rta-tokyo-1c-01" {
  subnet_id      = aws_subnet.private-sn-tokyo-1c-01.id
  route_table_id = aws_route_table.tokyo_private.id
}

resource "aws_route_table_association" "private-rta-tokyo-1d-01" {
  subnet_id      = aws_subnet.private-sn-tokyo-1d-01.id
  route_table_id = aws_route_table.tokyo_private.id
}
resource "aws_route_table_association" "private-rta-tokyo-1d-02" {
  subnet_id      = aws_subnet.private-sn-tokyo-1d-02.id
  route_table_id = aws_route_table.tokyo_private.id
}


#tokyo_public

resource "aws_route_table_association" "public-rta-tokyo-1a-01" {
  subnet_id      = aws_subnet.public-sn-tokyo-1a-01.id
  route_table_id = aws_route_table.tokyo_public.id
}
/*
resource "aws_route_table_association" "public-ap-northeast-1c" {
  subnet_id      = aws_subnet.public-ap-northeast-1c.id
  route_table_id = aws_route_table.tokyo_public.id
}

resource "aws_route_table_association" "public-ap-northeast-1d" {
  subnet_id      = aws_subnet.public-ap-northeast-1d.id
  route_table_id = aws_route_table.tokyo_public.id
}
*/