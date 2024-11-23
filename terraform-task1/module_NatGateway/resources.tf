  resource "aws_eip" "nat_gw_eip" {
  domain = "vpc"

}

resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat_gw_eip.id
  subnet_id     = data.aws_subnet.GetPublicSubnet.id
}