# terraform block

terraform {
  required_version = "~> 1.2.3"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      
     }
  }
}


#provider block

provider "aws" {
    region = "us-east-1"
  
}