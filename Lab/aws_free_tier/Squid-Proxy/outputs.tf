output "name" {
    value = module.ec2_instance.instance_id
    description = "The ID of the created EC2 instance"
}

output "public_ip" {
    value = module.ec2_instance.instance_public_ip
    description = "The public IP address of the created EC2 instance"
}

