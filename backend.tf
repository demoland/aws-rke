terraform {
  required_version = "~> 1.3.1"

  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "aws-rke2"
    }
  }
}

provider "aws" {
  region = local.aws_region

  default_tags {
    tags = {
      Owner       = "Daniel Fedick"
      Purpose     = "aws-rke2"
      Terraform   = true
      Environment = "development"
      DoNotDelete = true
      Name        = "hashistack"
      Type        = "Demoland Vault"
    }
  }
}
