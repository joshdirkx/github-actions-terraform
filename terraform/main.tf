terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
  }
}

provider "aws" {
  region = vars.aws_region
}

resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
}
