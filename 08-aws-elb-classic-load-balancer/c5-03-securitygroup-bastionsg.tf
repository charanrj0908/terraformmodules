#bastion security group module

#bastion security group

module "public_bastion_sg" {
  
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  
  name = "public-bastion-sg"
  description = "security group for bastion instance"
  vpc_id = module.vpc.vpc_id

  #ingress rules
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  


  #egress rules

  egress_rules = ["all-all"]
  tags = local.common_tags


}