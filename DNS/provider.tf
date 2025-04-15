terraform {
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "~> 3.0"
    }
  }
}

variable "tsig_key" {
  description = "TSIG key for DNS provider"
  type        = string
  sensitive   = true
}

provider "dns" {
    update {
        server         = "ns1.garrahan.gov.ar"
        key_name       = "tsig-key."
        key_algorithm  = "hmac-sha256"
        key_secret     = var.tsig_key
    }
}