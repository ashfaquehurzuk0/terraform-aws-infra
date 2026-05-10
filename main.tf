terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "infra/terraform.tfstate"
    region = "ap-south-1"
  }
}
