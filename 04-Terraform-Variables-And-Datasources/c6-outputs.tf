#terraform outputs

output "instancepublicip" {
    description = "instance public ip"
    value = aws_instance.myec2instance.public_ip
  
}

output "instancepublicdns" {
    description = "instance public dns"
    value = aws_instance.myec2instance.public_dns
  
}