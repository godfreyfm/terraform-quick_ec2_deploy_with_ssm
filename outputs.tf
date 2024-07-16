output "instance_id" {
  description = "The intance ID"
  value       = module.ec2_instance.instance_id
}

output "iam_instance_profile_name" {
  description = "The name of the IAM instance profile."
  value       = module.session_manager.iam_instance_profile_name
}

output "instance_public_ip" {
  description = "The public IP address of the created EC2 instance."
  value       = module.ec2_instance.instance_public_ip
}