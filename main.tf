provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "mybucketnameruchitha30"
  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "example2" {
  bucket = "mybucketnameruchitha3020"
  tags = {
    Environment = "TEST_TAG"
  }
}
