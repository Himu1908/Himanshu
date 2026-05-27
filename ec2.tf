terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "terraform-bucket122"
    key = "tfstate"
    
  }
}




provider "aws" {
  region     = "ap-south-1"

}
resource "aws_instance" "myec2" {
  ami                    = "ami-0388e3ada3d9812da"
  instance_type          = "t3.micro"
  key_name               = "himanshu.key"
  vpc_security_group_ids = ["sg-023f8acb731b649a6"]
  tags = {
    Name = "myec2"
    name = "Himanshu"
    env  = "dev"

  }

}