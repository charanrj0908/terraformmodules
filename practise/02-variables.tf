#variables block

variable "instance_type" {
    description = "ec2_instance_type"
    type = string
    default = "t3.micro"
  
}

variable "ami" {
    description = "ami for ec2 instance"
    type = string
    default = "ami-0cff7528ff583bf9a"
  
}

variable "region" {
    type = string
    default = "us-east-1"
  
}


variable "key_pair" {
    description = "key pair for instance"
    type = string
    default = "terraformkey"
  
}
