output "coin" {
  value = [for instance in hcloud_server.mars_coin : {
    id             = instance.id
    name           = instance.name
    ipv4_address   = instance.ipv4_address
    ipv6_addresses = instance.ipv6_address
  }]
}
