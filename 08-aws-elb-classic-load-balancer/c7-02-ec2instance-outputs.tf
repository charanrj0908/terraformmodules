# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host
output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value       = module.public_ec2_instance.id
}
output "ec2_bastion_public_ip" {
  description = "List of Public ip address assigned to the instances"
  value       = module.public_ec2_instance.public_ip
}
# Private EC2 Instances
output "ec2_private_instance_ids" {
  description = "List of IDs of instances"
  value       = module.private_ec2_instance.id
}
output "ec2_private_ip" {
  description = "List of private ip address assigned to the instances"
  value       = module.private_ec2_instance.private_ip
}