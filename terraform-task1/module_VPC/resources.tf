resource "aws_vpc" "nhom20" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "nhom20VPC"
  }
}
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.nhom20.id
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "nhom20PublicSubnet"
  }
}
resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.nhom20.id
  cidr_block              = "10.0.20.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "nhom20PrivateSubnet"
  }
}
resource "aws_internet_gateway" "nhom20_igw" {
  vpc_id = aws_vpc.nhom20.id
  tags = {
    Name = "nhom20IGW"
  }
}

