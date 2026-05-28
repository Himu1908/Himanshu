variable "region" {
    default = "ap-south-1"
    description = "this is my home region"
}
variable "mybucket" {
    default = "terraform-bucket122"
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
    default = ["sg-023f8acb731b649a6"]
  
}
variable "instance-name" {
  default = "myec2"
}
