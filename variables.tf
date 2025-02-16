variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "environment1" {
  description = "Environment name2"
  default     = "dev"
}