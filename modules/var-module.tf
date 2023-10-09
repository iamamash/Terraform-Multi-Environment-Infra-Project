variable "env" {
  description = "This is the env value for multi-environment infra"
  type        = string
}

variable "ami" {
  description = "This is the ami value for ec2"
  type        = string
}

variable "instance_type" {
  description = "This is the instance type for infra"
  type        = string
}
