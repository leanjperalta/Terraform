output "ebs_volume_id" {
    value       = aws_ebs_volume.data.id
    description = "The ID of the EBS volume attached to the proxy server"
  
}

output "ebs_volume_size" {
    value       = var.ebs_volume_size
    description = "The size of the EBS volume in GB"
  
}