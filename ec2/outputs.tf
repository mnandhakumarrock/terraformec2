output "instance_id" {
  value       = aws_instance.app_server.id
  description = "The instance id"
}

output "public_ipv4_addr" {
  value       = aws_instance.app_server.public_ip
  description = "The instance id"
}