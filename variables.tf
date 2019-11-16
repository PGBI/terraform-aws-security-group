variable "project" {
  description = "Reference to a \"project\" module. See: https://registry.terraform.io/modules/PGBI/project/aws/"
}

variable "name" {
  type        = string
  description = "Name for the security group."
}

variable "description" {
  type    = string
  default = "Description of the security group."
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC the security group will belong to."
}
