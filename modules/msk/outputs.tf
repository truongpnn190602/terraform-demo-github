output "msk_cloudwatch_log_group" {
  description = "ID of the cloudwatch logs"
  value       = aws_cloudwatch_log_group.msk_cloudwatch_log_group.id
}


output "zookeeper_connect_string" {
  description = "Zookeeper connect string"
  value       = aws_msk_cluster.msk_cluster.zookeeper_connect_string
}


# output "msk_vpc" {
#   description = "ID of the MSK VPC"
#   value       = aws_vpc.msk_vpc.id
# }

# output "subnet_in_az_1" {
#   description = "ID of the first subnet"
#   value       = aws_subnet.subnet_in_az_1.id
# }

# output "subnet_in_az_2" {
#   description = "ID of the second subnet"
#   value       = aws_subnet.subnet_in_az_2.id
# }

# output "subnet_in_az_3" {
#   description = "ID of the third subnet"
#   value       = aws_subnet.subnet_in_az_3.id
# }


output "msk_cluster_security_group" {
  description = "ID of the security group"
  value       = aws_security_group.msk_cluster_security_group.id
}

output "allow_http_ipv4" {
  description = "ID of the security group"
  value       = aws_vpc_security_group_ingress_rule.allow_http_ipv4.id
}

output "allow_https_ipv4" {
  description = "ID of the security group"
  value       = aws_vpc_security_group_ingress_rule.allow_https_ipv4.id
}