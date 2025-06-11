output "msk_cloudwatch_log_group" {
  description = "ID of the cloudwatch logs"
  value       = module.msk.msk_cloudwatch_log_group
}


output "zookeeper_connect_string" {
  description = "Zookeeper connect string"
  value       = module.msk.zookeeper_connect_string
}


output "msk_cluster_security_group" {
  description = "ID of the security group"
  value       = module.msk.msk_cluster_security_group
}

output "allow_http_ipv4" {
  description = "ID of the security group"
  value       = module.msk.allow_http_ipv4
}

output "allow_https_ipv4" {
  description = "ID of the security group"
  value       = module.msk.allow_https_ipv4
}