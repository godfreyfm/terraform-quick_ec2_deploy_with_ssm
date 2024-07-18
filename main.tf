module "session_manager" {
  source  = "./modules/session_manager"
  project = var.project
}


module "ec2_instance" {
  source                    = "./modules/ec2_instance"
  region                    = var.region
  availability_zone         = var.availability_zone
  instance_type             = var.instance_type
  key_name                  = var.key_name
  project                   = var.project
  subnet_cidr               = var.subnet_cidr
  public_cidr               = var.public_cidr
  vpc_cidr                  = var.vpc_cidr
  iam_instance_profile_name = module.session_manager.iam_instance_profile_name
}

module "ebs_volume" {
  depends_on        = [module.ec2_instance]
  source            = "./modules/ebs_volume"
  volume_size       = var.volume_size
  volume_type       = var.volume_type
  availability_zone = var.ebs_availability_zone
  instance_id       = var.instance_id
  device_name       = var.device_name
  count = var.create_ebs_volume ? 1 : 0

}