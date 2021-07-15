terraform {
  required_version = "=1.0.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

module "cloud9" {
  source = "./cloud9"
}