variable "ami_web" {
  type        = string
  description = "AMI images for jenkins servers"
}

variable "ami_sonar" {
  type        = string
  description = "AMI images for sonar servers"
}

variable "project_name" {
    type = string
    description = "name of the project"
}

variable "compute-sg" {
    description = "security group for compute instances"
    type = string
    default = "ACS-sg"
}

variable "keypair" {
    type = string
    description = "keypair for instances"
}

variable "public_subnets-1" {
  type        = string
  description = "public subnets"
}

variable "tag" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}