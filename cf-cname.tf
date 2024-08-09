resource "cloudflare_record" "count-01" {
  zone_id = local.current_cf_zone_id
  count   = length(cloudflare_record.coin_ipv4)
  name    = "coin-${format("%02d", count.index + 1)}"
  value   = cloudflare_record.coin_ipv4[count.index].hostname
  type    = "CNAME"
  ttl     = 300
  proxied = false
}

