resource "aws_route_table" "nhom20_es_east_1_public" {
  vpc_id = data.aws_vpc.GetVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.GetIGW.id
  }
  tags = {
    Name = "nhom20PublicRouteTable"
  }
}

resource "aws_route_table_association" "nhom20_es_east_1_public" {
  subnet_id      = data.aws_subnet.GetPublicSubnet.id
  route_table_id = aws_route_table.nhom20_es_east_1_public.id
}
resource "aws_route_table" "nhom20_es_east_1_nated" {
  vpc_id = data.aws_vpc.GetVPC.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.NATid
  }

  tags = {
    Name = "nhom20PrivateRouteTable"
  }
}
resource "aws_route_table_association" "nhom20_es_east_1_nated" {
  subnet_id      = data.aws_subnet.GetPrivateSubnet.id
  route_table_id = aws_route_table.nhom20_es_east_1_nated.id
}