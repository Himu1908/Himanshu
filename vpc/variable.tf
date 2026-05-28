variable "region" {
  default = "ap-south-1"
}
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}
locals {
  pub-sub-cidr = "10.0.1.0/24"
}

variable "pvt-sub-cidr" {
  default = "10.0.2.0/24"
}

variable "ami" {
  default = "ami-0388e3ada3d9812da"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "himanshu.key"
}
variable "mysg" {
  default = "sg-023f8acb731b649a6"
}

variable "instance_name1" {
  default = "myec2"
}