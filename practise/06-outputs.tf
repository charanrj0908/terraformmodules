#output values block

output "output-1" {
    description = "public_ip"
    value = {for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types if length(details.instance_types) != 0}
    
  
}


