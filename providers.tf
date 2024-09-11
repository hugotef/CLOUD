terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.60.0, <5.63.1, !=5.62.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = "~>1.9.0"
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
  # Configuration options
   default_tags {
    tags = var.tags
  }
}
