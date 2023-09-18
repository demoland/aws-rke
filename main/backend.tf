terraform {
  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "aws-rke2"
    }
  }
}
