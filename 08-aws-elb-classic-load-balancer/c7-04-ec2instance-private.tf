#private ec2 instance module

module "private_ec2_instance" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  # insert the 34 required variables here

  name = "private-ec2-instance"

  ami                         = data.aws_ami.myami.id
  instance_type               = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name                    = var.instance_keypair
  vpc_security_group_ids      =  [module.private_sg.this_security_group_id]
  instance_count = var.private_instance_count
  subnet_ids = [
    module.vpc.private_subnets[0], 
    module.vpc.private_subnets[1]
    ]
  
     
 

  tags = local.common_tags
}