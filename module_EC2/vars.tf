data "aws_vpc" "GetVPC" {
  filter {
    name   = "tag:Name"
    values = ["nhom20VPC"]
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
data "aws_security_group" "Public_security_groups" {
  filter {
    name   = "tag:Name"
    values = ["allow_ssh_sg"]
  }
}
data "aws_security_group" "Private_security_groups" {
  filter {
    name   = "tag:Name"
    values = ["internal_ssh_and_ping_sg"]
  }
}
variable "PRIV_KEY_PATH" {
  default = "module_EC2/nhom20key"
}
variable "PUB_KEY_PATH" {
  default = "module_EC2/nhom20key.pub"
}