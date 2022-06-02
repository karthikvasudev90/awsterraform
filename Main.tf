## backend data for terraform
#terraform {
#  required_providers {
#    aws = {
#      source = "hashicorp/aws"
#    }
#  }
#
#  backend "remote" {
#  organization = "CloudQuickLabs"
#
#    workspaces {
#      name = "AWSBackup"
#    }
#  }
#}
#
#provider "aws" {
#  region = "us-east-1"
#}

terraform {
  # terraform version needed
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "terraformbackendaws"
    key = "backend.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
