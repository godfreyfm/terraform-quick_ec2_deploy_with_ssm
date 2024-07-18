variable "region" {
  description = "The AWS region to create resources in."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "public_cidr" {
  description = "The CIDR block for the public internet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet."
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
  type        = string
}


variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
}

variable "project" {
  description = "The project name."
  type        = string
}

variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile for the EC2 instance."
  type        = string
}