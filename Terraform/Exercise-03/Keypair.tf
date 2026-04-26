resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = file("C:/DevopsProjects/Terraform/Exercise-03/dovekey.pub")
}