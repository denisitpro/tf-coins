resource "cloudflare_record" "coin_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(module.hetzner_10_01_mars.coin)
  name            = module.hetzner_10_01_mars.coin[count.index].name
  value           = module.hetzner_10_01_mars.coin[count.index].ipv4_address
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "coin_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(module.hetzner_10_01_mars.coin)
  name            = module.hetzner_10_01_mars.coin[count.index].name
  value           = module.hetzner_10_01_mars.coin[count.index].ipv6_addresses
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}