#private security group module

#private security group

module "private_sg" {
  
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  
  name = "private-sg"
  description = "security group for private instance"
  vpc_id = module.vpc.vpc_id

  #ingress rules

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp","http-80-tcp"]


  #egress rules

  egress_rules = ["all-all"]
  
  
  
  tags = local.common_tags


}