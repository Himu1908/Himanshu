provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""

}
resource "aws_instance" "myec2" {
  ami                    = "ami-0388e3ada3d9812da"
  instance_type          = "t3.micro"
  key_name               = "himanshu.key.pem"
  vpc_security_group_ids = "mysg"
  tags = {
    Name = "myec2"
    name = "Himanshu"
    env  = "dev"

  }

}