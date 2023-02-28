
variable "project_name" {
  type = string
}

variable "root_domain_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

variable "db_name" {
  type        = string
  description = "the name of the database"
}

variable "keypair" {
  type        = string
  description = "key pair for the instances"
}

variable "tag" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "max_size_asg" {
  description = "A mapping of he max_size for asg instances."
  type        = map(string)
  default     = {}
}

variable "min_size_asg" {
  description = "A mapping of he max_size for asg instances."
  type        = map(string)
  default     = {}
}

variable "capacity_asg" {
  description = "A mapping of the desired capacity for asg instances."
  type        = map(string)
  default     = {}
}

variable "health_grace_period_asg" {
  description = "A mapping of the health_check_grace_period for asg instances."
  type        = map(string)
  default     = {}
}

variable "domain_subnet_1" {
  type        = string
  description = "list of domain subnets"
}

variable "domain_subnet_2" {
  type        = string
  description = "list of domain subnets"
}

variable "name" {
  type    = string
  default = "ACS"
}

variable "user_arn" {
  type = string
}

variable "access_point" {
  type        = list(any)
  description = "efs access point"
}

variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}

variable "vpc_cidr" {
  type = string
}

variable "enable_dns_support" {
  type = bool
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "public_subnets" {
  type = list(any)
}

variable "compute_private_subnets" {
  type = list(any)
}

variable "data_private_subnets" {
  type = list(any)
}

variable "ami_bastion" {
  type        = string
  description = "AMI images for bastion servers"
}

variable "ami_nginx" {
  type        = string
  description = "AMI images for nginx servers"
}

variable "ami_web" {
  type        = string
  description = "AMI images for web servers"
}

variable "ami_sonar" {
  type        = string
  description = "AMI images for sonar servers"
}
