variable "devops_public_key" {
  default = "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIHwMSkxx3cD9aYZEnQd/hVZT6x9YR2acuU6fy1AMWI3XAAAACHNzaDpjdHgy ctx2"
}

variable "HTZ_TOKEN" {
  type      = string
  sensitive = true
}

variable "CF_API_RW_TOKEN" {
  type      = string
  sensitive = true
}


data "cloudflare_zone" "current_cf_zone_id" {
  name = "beta-82.win"
}

locals {
  current_cf_zone_id   = data.cloudflare_zone.current_cf_zone_id.zone_id
  current_cf_zone_name = data.cloudflare_zone.current_cf_zone_id.name

}

output "dns_zone_id" {
  value = local.current_cf_zone_id
}