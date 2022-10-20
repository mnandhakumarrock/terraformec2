output "sg_name" {
  value       = aws_security_group.allow_web_traffic.name
  description = "The web security group id"
}