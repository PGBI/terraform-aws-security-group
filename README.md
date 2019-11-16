# AWS Security Group module

## Description

This module is a simple wrapper around the aws resource `aws_security_group`. The name of the security group will be 
prefixed with the project name and the terraform workspace.

## Usage

```hcl
/**
 * Initialize the project
 */
module "project" {
  source  = "PGBI/project/aws"
  version = "~>0.1.0"

  name     = "myproject"
  vcs_repo = "github.com/account/project"
}

module "security_group" {
  source  = "PGBI/security-group/aws"
  version = "~>0.1.0"

  project     = module.project
  name        = "my-sg"
  description = "SG associated with the ec2 instance xxx"
  vpc_id      = "vpc-abcdef"
}
```
