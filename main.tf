module "session_manager" {
  source  = "./module/session_manager"
  project = var.project
}


module "ec2_instance" {
  source                    = "./module/ec2_instance"
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
