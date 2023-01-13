resource "aws_instance" "myec2instance" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
  
    tags = {
      "name" = "ec2demo"
    }
  
}
