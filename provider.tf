terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "msgd-daws-86s"
    key    = "vpc-module-demo"
    region = "us-east-1"
    use_lockfile = false
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
