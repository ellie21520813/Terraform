
data "aws_subnet" "GetPublicSubnet" {
  filter {
    name   = "tag:Name"
    values = ["nhom20PublicSubnet"]
  }
}

