region            = "us-east-1"
vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
public_cidr       = "0.0.0.0/0"
availability_zone = "us-east-1a"
instance_type     = "t2.micro"
key_name          = "gmaiLABS_key"
project           = "gmaiLABS"

# Variables for the EBS volume

volume_size           = 10
volume_type           = "gp2"
ebs_availability_zone = "us-east-1a"
instance_id           = module.ec2_instance.instance_id
device_name           = "/dev/sdh"
create_ebs_volume = false