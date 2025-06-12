terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket       = "owrmbucket"
    key          = "state/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true

  }
}

provider "aws" {
 region     = "eu-north-1"
}
 
resource "aws_s3_bucket" "example" {
   bucket = "owrm-1"
   acl = "private"  
}
