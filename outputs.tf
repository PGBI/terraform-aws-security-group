output "arn" {
  description = "The name of the security group."
  value       = aws_security_group.main.arn
}

output "id" {
  description = "The ID of the security group."
  value       = aws_security_group.main.id
}

output "name" {
  description = "The full name of the security group."
  value       = aws_security_group.main.name
}
