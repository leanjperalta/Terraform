variable "instance_id" {
    description = "The ID of the EC2 instance to attach the EBS volume to"
    type        = string
  
}

variable "ebs_volume_size" {
    description = "Size of the EBS volume in GB"
    type        = number
}

variable "availability_zone" {
    description = "The availability zone where the EBS volume will be created"
    type        = string
}