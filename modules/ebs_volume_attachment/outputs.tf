output "volume_id" {
  description = "The ID of the EBS volume."
  value       = aws_ebs_volume.ebs_volume.id
}
