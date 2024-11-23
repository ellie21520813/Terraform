data "aws_vpc" "GetVPC" {
  filter {
    name   = "tag:Name"
    values = ["nhom20VPC"]
  }
}