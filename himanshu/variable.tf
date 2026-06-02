variable "region" {
  default = "ap-south-1"
}
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

variable "pub-sub-cidr" {
  default = "10.0.1.0/24"
}

variable "pvt-sub-cidr" {
  default = "10.0.2.0/24"
}
variable "az1" {
  default = "ap-south-1a"
}
variable "az2" {
  default = "ap-south-1b"
}
variable "route-cidr" {
  default = "0.0.0.0/0"
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
  default = "sg-0aed4cc5284ab673b"
}

variable "instance-name1" {
  type    = string
  default = "Himanshu"
}
variable "project" {
  default = "devops"
}

variable "subnet_id" {
  type = string
}
variable "user-name" {
  type = string
}

variable "Environment" {
  type = string
}

variable "policy_arns" {
  description = "List of IAM policies to attach"
  type        = list(string)
  default     = []
}