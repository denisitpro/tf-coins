# resource "hcloud_firewall" "mars_fw_mgmt" {
#   name = "mgmt-rules"
#
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port      = "22"
#     source_ips = [
#       "0.0.0.0/0",
#       "::/0"
#     ]
#   }
#
# }