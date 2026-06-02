terraform {
  backend "s3" {
    bucket         = "terraform-bucket122"
    region         = "ap-south-1"
    key            = "tfstate"
     use_lockfile =  true
  }
}
provider "aws" {
  region = var.region
}