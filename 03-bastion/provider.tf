terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.48.0"
        }
    }
    backend "s3" {
        bucket = "surendra-remotebucket"
        key    = "expense-dev-bastion"
        region = "us-east-1"
        dynamodb_table = "remote-lock"
    }
}

provider "aws" {
    region = "us-east-1"
}