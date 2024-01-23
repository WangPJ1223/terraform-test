terraform {
  required_providers {
    aws = {
      version = "~> 5.25.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-2"
}
