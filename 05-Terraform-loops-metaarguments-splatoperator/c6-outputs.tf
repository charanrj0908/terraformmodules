#terraform outputs 

#for loop with list [single line comments]

output "for_loop_list" {
    description = "list using for loop"
    value = [for instance in aws_instance.myec2instance: instance.public_dns]
  
}


#for loop with map

output "for_loop_map" {
    description = "map using for loop"
    value = {for instance in aws_instance.myec2instance: instance.id => instance.public_dns }
  
}

#for loop with map advanced

output "for_loop_map_aadvanced" {
    description = "map advanced using for loop"
    value = {for c,instance in aws_instance.myec2instance: c => instance.public_ip}
  
}

# Output Legacy Splat Operator (latest) - Returns the List
/* [multi-line comments]
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Expression"
  value = aws_instance.myec2instance.*.public_dns
}  
*/

# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized Splat Expression"
  value = aws_instance.myec2instance[*].public_dns
}