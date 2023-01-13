# terraform block

terraform {
  required_version = "~> 1.2.3"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.19.0"
      
     }

     null = {
      source = "hashicorp/null"
      version = "~> 3.0.0"
    }    
  }
}


#provider block

provider "aws" {
    region = var.aws_region
    profile = "default"
  
}