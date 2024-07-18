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


#  Variables for the EBS volume

variable "volume_size" {
  description = "The size of the EBS volume in GB."
  type        = number
}

variable "volume_type" {
  description = "The type of the EBS volume."
  type        = string
  default     = "gp2"
}

variable "ebs_availability_zone" {
  description = "The availability zone where the EBS volume will be created."
  type        = string
}

variable "instance_id" {
  description = "The ID of the EC2 instance to attach the EBS volume to."
  type        = string
}

variable "device_name" {
  description = "The device name to expose to the EC2 instance."
  type        = string
}

variable "create_ebs_volume" {
  description = "Flag to determine whether to create the EBS volume."
  type        = bool
  default     = true
}