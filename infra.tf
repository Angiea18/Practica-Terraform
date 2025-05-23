module "ec2_instance" {
  source          = "./modules/ec2"
  instance_ami_id = var.instance_ami_id
  environment     = "dev"
}

module "security_group" {
  source      = "./modules/security_group"
  vpc_id      = var.vpc_id
  environment = "dev"
}

output "instance_public_ips" {
  value = module.ec2_instance.instance_public_ips
}

output "security_group_id" {
  value = module.security_group.security_group_id
}
