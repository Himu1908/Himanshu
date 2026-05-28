terraform {
  backend "s3" {
    bucket         = "terraform-bucket122"
    region         = "ap-south-1"
    key            = "tfstate"
      dynamodb_table = "terraform-lock"
  }
}
provider "aws" {
  region = var.region
}