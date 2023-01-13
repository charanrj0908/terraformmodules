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

#instance type list

variable "ec2_instance_list" {
    description = "instance type"
    type = list(string)
    default = ["t3.micro", "t3.small","t2.micro"]

  
}


#instance_type_map

variable "ec2_instance_map" {
    description = "instance type"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "qa"  = "t3.small"
      "prod" = "t3.large"
    }
      
}