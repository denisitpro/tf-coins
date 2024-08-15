resource "hcloud_server" "mars_coin" {
  count       = 1
  name        = "${var.region_code}-${var.stand_name}-coin-${format("%02d", count.index + 1)}"
  server_type = "cpx51"
  image       = "ubuntu-24.04"
  location    = "fsn1"
  ssh_keys = [
    var.hcloud_ssh_key_id
  ]
  user_data = file("./user_data/10_user_data_v1.sh")

  lifecycle {
    ignore_changes = [user_data, image]
  }

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}