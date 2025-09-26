output "instance_public_ip" {
    value       = aws_instance.proxy.public_ip
    description = "The public IP address of the proxy server"
}

output "instance_id" {
    value       = aws_instance.proxy.id
    description = "The ID of the proxy server instance"
  
}

output "availability_zone" {
    value       = aws_instance.proxy.availability_zone
    description = "The availability zone of the proxy server instance"
}