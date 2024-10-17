resource "aws_instance" "nhom20_public_instance" {
  ami             = "ami-0866a3c8686eaeeba"
  instance_type   = "t2.micro"
  subnet_id       = data.aws_subnet.GetPublicSubnet.id
  key_name        = aws_key_pair.nhom20keypairs.key_name
  security_groups = [data.aws_security_group.Public_security_groups.id]
  tags = {
    Name = "nhom20_public_instance"
  }
}

resource "aws_instance" "nhom20_priv_instance" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.GetPrivateSubnet.id
  key_name      = aws_key_pair.nhom20keypairs.key_name
  security_groups = [data.aws_security_group.Private_security_groups.id]
  tags = {
    Name = "nhom20_priv_instance"
  }
}