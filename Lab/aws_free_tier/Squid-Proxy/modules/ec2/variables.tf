variable "instance_type" {
    description = "The type of instance to create"
    type        = string
#    default     = "t2.micro"
  
}

variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type        = string
#    default     = "ami-" # Amazon Linux 2 AMI (HVM), SSD Volume Type in us-east-2
  
}

variable "key_name" {
    description = "The name of the key pair to use for the instance"
    type        = string 
}

variable "vpc_id" {
    description = "The ID of the VPC where the instance will be deployed"
    type        = string
}

variable "ebs_volume_size" {
    description = "Size of the EBS volume in GB"
    type        = number
}

variable "subnet_id" {
    description = "The ID of the subnet where the instance will be deployed"
    type        = string
  
}