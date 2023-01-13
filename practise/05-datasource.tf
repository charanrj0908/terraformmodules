# data source block

data "aws_ami" "myami" {
    
  
  most_recent      = true
  owners           = ["amazon"]

  

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
  


data "aws_availability_zones" "az_list" {

    filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
  
}


data "aws_ec2_instance_type_offerings" "my_ins_type" {
for_each=toset(data.aws_availability_zones.az_list.names)
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }
  filter {
    name   = "location"
    values = [each.key]
  }
  location_type = "availability-zone"
}
