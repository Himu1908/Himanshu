resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.mysg]
   subnet_id              = var.subnet_id
  tags = {
    Name = var.instance-name1
    name = "Himanshu"
    env  = "dev"

  }
}




