# resource "hcloud_server" "mars_mgmt1" {
#   count       = 1
#   name        = "${var.region_code}-${var.stand_name}-mgmt-${format("%02d", count.index + 1)}"
#   server_type = "cx22"
#   image       = "ubuntu-24.04"
#   location    = "fsn1"
#   ssh_keys = [
#     var.hcloud_ssh_key_id
#   ]
#   user_data = file("./user_data/10_user_data_v1.sh")
#
#   lifecycle {
#     ignore_changes = [user_data, image]
#   }
#
# #   firewall_ids = [
# #     hcloud_firewall.mars_fw_mgmt.id,
# # #     hcloud_firewall.mars_fw_base.id
# #   ]
#   public_net {
#       ipv4 = hcloud_primary_ip.mgmt1_ipv4[count.index].id
#       ipv6 = hcloud_primary_ip.mgmt1_ipv6[count.index].id
#     }
#   depends_on = [
#     hcloud_primary_ip.mgmt1_ipv4,
#     hcloud_primary_ip.mgmt1_ipv6,
#     hcloud_network_subnet.mgmt_net
#   ]
#
# }
#
# resource "hcloud_server_network" "mgmt1_local_ip" {
#   count       = length(hcloud_server.mars_mgmt1)
#   server_id   = hcloud_server.mars_mgmt1[count.index].id
#   network_id  = hcloud_network.mars_net16.id
#   ip          = cidrhost("10.50.4.0/24", count.index + 4)
# }