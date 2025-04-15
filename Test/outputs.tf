# output "bloque-cidr" {
#     value = "${var.CIDR-Block-VPC}"
  
# }
# output "Puerto-SSH" {
#     value = "${var.puerto-ssh}"
  
# }
# output "DNS" {
#     value = "${var.resolve-dns}"
  
# }
# output "listado-ip" {
#     value = ["${var.lista-cidr[0]}",
#              "${var.lista-cidr[1]}"]
  
# }

# output "valor-subnet-priv" {
#     value = ["id-de-la-vpc = ${var.subred-privada.vpc}",
#              "id-de-la-cidr = ${var.subred-privada.cidr}",
#              "id-de-la-zona = ${var.subred-privada.zona}",
#              "id-de-mapping = ${var.subred-privada.mapeaip}"]
  
# }

output "info_usuario_iam" {
    value = data.aws_iam_user.mi_usuario.arn
  
}