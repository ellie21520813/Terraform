resource "aws_key_pair" "nhom20keypairs" {
  key_name   = "nhom20key"
  public_key = file(var.PUB_KEY_PATH)
}