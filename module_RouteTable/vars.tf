data "aws_vpc" "GetVPC" {
  filter {
    name   = "tag:Name"
    values = ["nhom20VPC"]
  }
}
data "aws_internet_gateway" "GetIGW" {
  filter {
    name   = "tag:Name"
    values = ["nhom20IGW"]
  }
}
data "aws_subnet" "GetPublicSubnet" {
  filter {
    name   = "tag:Name"
    values = ["nhom20PublicSubnet"]
  }
}
data "aws_subnet" "GetPrivateSubnet" {
  filter {
    name   = "tag:Name"
    values = ["nhom20PrivateSubnet"]
  }
}
variable "NATid" {
  type = string
}