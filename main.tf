terraform {
  required_version = ">= 0.12"
}

/**
 * The security group.
 */
resource "aws_security_group" "main" {
  name_prefix = "${var.project.name_prefix}-${var.name}"
  description = var.description
  vpc_id      = var.vpc_id

  tags = var.project.tags
}
