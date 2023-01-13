# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
resource "aws_eip" "bastion_eip" {
  depends_on = [module.public_ec2_instance,module.vpc]
  instance =  module.public_ec2_instance.id[0] 
  vpc = true
  tags = local.common_tags  
}