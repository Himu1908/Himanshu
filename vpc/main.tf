resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "myvpc"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_cidr
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
        Name = "public_subnet"
    }
}
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cidr
    availability_zone = "us-east-1b"
    tags = {
        Name = "private_subnet"
    }
}
resource "aws_internet_gateway" "myigw" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = "myigw"
    }
}
resource "aws_route_table" "myroute" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.myigw.id
    }
}
resource "aws_route_table_association" "public_subnet_association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.myroute.id
}
resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  
  vpc_security_group_ids = [var.mysg]
  tags = {
        Name = var.instance_name1
        name = "Himanshu"
        env  = "dev"
  }
}

// Added missing variable declaration for instance_name1
variable "instance_name1" {
    description = "Name tag for the EC2 instance"
    type        = string
    default     = "my-ec2-instance"
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    description = "CIDR block for the public subnet"
    type        = string
    default     = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
    description = "CIDR block for the private subnet"
    type        = string
    default     = "10.0.2.0/24"
}