provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "mybucketnameruchitha30"
  tags = {
    Environment = var.environment
  }
}