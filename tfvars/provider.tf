terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    # bucket = "mybucket"
    # key    = "path/to/my/key"
    # region = "us-east-1"
    # dynamodb_table = "TableName"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
