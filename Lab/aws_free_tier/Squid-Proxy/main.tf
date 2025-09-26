provider "aws" {
    region = var.aws_region
  
}

module "ec2_instance" {
    source = "./modules/ec2"
    
    instance_type = var.instance_type
    ami_id = var.ami_id
    vpc_id = var.vpc_id
    subnet_id = var.subnet_id
    key_name = var.key_name
    ebs_volume_size = module.ebs_volume.ebs_volume_size
}

module "ebs_volume" {
    source = "./modules/ebs"
    
    instance_id = module.ec2_instance.instance_id
    ebs_volume_size = var.ebs_volume_size
    availability_zone = var.availability_zone
}
