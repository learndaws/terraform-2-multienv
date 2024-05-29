terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }

  backend "s3" {
    bucket = "multienv-workspace"
    key    = "multienv-workspace-tfstate"
    region = "us-east-1"
    dynamodb_table = "multienv-workspace"
  }
}

provider "aws" {
  region = "us-east-1" 
}