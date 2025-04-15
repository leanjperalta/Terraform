terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.65.0"
    # }
    # kubernetes = {
    #   source = "hashicorp/kubernetes"
    #   version = "2.32.0"
    # }
    # tls = {
    #   source = "hashicorp/tls"
    #   version = "4.0.5"
     }
  }
}

provider "aws" {
  # Configuration options
  region = "${var.AWS_REGION}"
  access_key = "${var.AWS_ACCESSKEY}"
  secret_key = "${var.AWS_SECRETKEY}"
}

# provider "kubernetes" {
  
# }

# provider "tls" {
  
# }