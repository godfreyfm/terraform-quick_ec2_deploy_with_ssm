resource "aws_ebs_volume" "ebs_volume" {
  size              = var.volume_size
  type              = var.volume_type
  availability_zone = var.ebs_availability_zone
  tags = {
    Name = "${var.project}-ebs"
  }
}

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = var.instance_id
  force_detach = true
}
