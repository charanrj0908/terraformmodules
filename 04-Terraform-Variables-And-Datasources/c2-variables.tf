#variable block

#aws region

variable "aws_region" {
    description = "aws region"
    type = string
    default = "us-east-1"   
  
}


#instance type

variable "ec2_instance" {
    description = "instance type"
    type = string
    default = "t2.micro"

  
}

#key pair

variable "key_pair" {
    description = "key pair"
    type = string
    default = "terraformkey"
  
}