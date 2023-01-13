#ec2 instance
resource "aws_instance" "myec2instance" {
    ami = data.aws_ami.myami.id
    instance_type = var.ec2_instance
    user_data = file("${path.module}/app1-install.sh")
    key_name = var.key_pair
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
  
    tags = {
      "name" = "ec2demo"
    }
  
}
