# variable "CIDR-Block-VPC" {
#     description = "Bloque CIDR VPC"
#     type = string
  
# }

# variable "puerto-ssh" {
#     description = "SSH port"
#     type = number
  
# }

# variable "resolve-dns" {
#     description = "Enable dns"
#     type = bool
# }

# variable "lista-cidr" {
#     description = "listado de ips"
#     type = list
#     default = []
# }

# variable "subred-privada" {
#     description = "bleh"
#     type = map(string)
#     default = {
#       vpc = "123",
#       cidr = "123",
#       zona = "us-east",
#       mapeaip = "true"
#     }
# }
variable "AWS_REGION" {
    type = string
  
}
variable "AWS_ACCESSKEY" {
    type = string
  
}
variable "AWS_SECRETKEY" {
    type = string
  
}