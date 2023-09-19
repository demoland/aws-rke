terraform {
  required_version = "~> 1.3.1"

  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "aws-rke2"
    }
  }
}
