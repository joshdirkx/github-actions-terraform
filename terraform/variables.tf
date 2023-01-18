variable "aws_region" {
  default     = "us-west-2"
  description = "region to deploy aws resources into"
}

variable "git_hub_repository" {
  description = "github repository"
}
variable "git_hub_branch" {
  description = "github branch"
}
