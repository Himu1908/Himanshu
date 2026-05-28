terraform {
  backend "s3" {
    region =  "ap-south-1"
    bucket = "terraform-bucket122"
    key = "tfstate"
    
  }
}




provider "aws" {
  region = var.region

}
resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.mysg]
  tags = {
    Name = var.instance-name
    name = "Himanshu"
    env  = "dev"

  }

}