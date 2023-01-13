#resource block
resource "aws_instance" "myec2instance" {
    ami = data.aws_ami.myami.id
    instance_type = var.instance_type
    user_data = file("${path.module}/app1-install.sh")
    key_name = var.key_pair
    vpc_security_group_ids = [ aws_security_group.mysg-ssh.id , aws_security_group.mysg-web.id ]
    for_each =  toset(data.aws_availability_zones.az_list.names)
    availability_zone = each.key
    
    tags = {
      "name" = "myec2instance-${each.key}"
    }
    
  
}