# If we want to pin the version of Terraform

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.1"
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }
}