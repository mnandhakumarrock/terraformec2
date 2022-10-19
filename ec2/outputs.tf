output "instance_id" {
  value       = aws_instance.app_server.id
  description = "The instance id"
}