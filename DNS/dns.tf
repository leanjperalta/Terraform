resource "dns_a_record_set" "name" {
    zone = "garrahan.gov.ar."
    name = "test"
    addresses = [
        "172.16.20.20",
        "172.16.20.21"
    ]
    ttl = 300
  
}

# resource "dns_cname_record_set" "name" {
#     zone = "garrahan.gov.ar."
#     name = "test"
#     cname = "test.garrahan.gov.ar."
#     ttl = 300
# }