terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = vars.s3_bucket_name
    key    = vars.s3_bucket_key
    region = vars.aws_region
  }
}

provider "aws" {
  region = vars.aws_region
}
