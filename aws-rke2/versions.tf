terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.6"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = ">= 2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Owner       = "Daniel Fedick"
      Purpose     = "Demoland Playground"
      Terraform   = true
      Environment = "development"
      DoNotDelete = true
      Name        = "Demoland"
      Type        = "Demoland Vault"
    }
  }

}