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
variable "device_name" {
  description = "The device name to expose to the EC2 instance."
  type        = string
}

variable "project" {
  description = "The project name."
  type        = string
}

variable "create_ebs_volume" {
  description = "Flag to determine whether to create the EBS volume."
  type        = bool
  default     = true
}

variable "instance_id" {
  description = "The ID of the unstance"
  type        = string
}
