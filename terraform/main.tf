terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "terraform_state/${vars.git_hub_repository}"
    key    = vars.git_hub_branch
    region = vars.aws_region
  }
}

provider "aws" {
  region = vars.aws_region
}
