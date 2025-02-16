provider "aws" {
  region = "us-west-2"  # or your preferred region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-test-bucket-xyz123"  # must be unique
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}