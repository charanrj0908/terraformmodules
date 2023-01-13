#terraform settings block

terraform {
  required_version = "~> 1.2"
  required_providers {
    aws = {

        source = "hashicorp/aws"
        version = "~> 2.7"
      
     }
  }
}


#provider block

provider "aws" {
    region = "us-east-1"
  
}