output "instance_id" {
  value       = module.ec2.instance_id
  description = "The instance id"
}

output "security_group_name" {
  value       = module.security_group.sg_name
  description = "The instance id"
}