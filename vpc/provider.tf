terraform {
  backend "s3" {
    bucket         = "batch23-123"
    region         = "ap-south-1"
    key            = "tfstate"
  }
}
provider "aws" {
  region = var.region
}