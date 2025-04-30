terraform {
  backend "s3" {
<<<<<<< HEAD
    bucket = "my-terraform-state-bucket-antoine123"
=======
    bucket = "my-terraform-state-bucket-antoinevictor"
>>>>>>> ea10af5d79729c5c11ca122e1d21945ab350d955
    key    = "terraform.tfstate"
    region = "us-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
} 