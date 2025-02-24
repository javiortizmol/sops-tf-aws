terraform {
  required_version = "~> 1.0.3"
  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "~> 0.5"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}