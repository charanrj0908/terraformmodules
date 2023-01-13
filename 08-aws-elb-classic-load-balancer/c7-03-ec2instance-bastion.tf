#public ec2 instance module

module "public_ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  # insert the 34 required variables here

  name = "bastion-host"

  ami                         = data.aws_ami.myami.id
  instance_type               = var.instance_type
  key_name                    = var.instance_keypair
 
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      =[module.public_bastion_sg.this_security_group_id] 
  associate_public_ip_address = true

  tags = local.common_tags
}