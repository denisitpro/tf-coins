module "hetzner_10_01_mars" {
  source            = "./modules/10-01-mars"
  region_code       = "10"
  stand_name        = "01-mars"
  hcloud_ssh_key_id = hcloud_ssh_key.devops_ssh_public_key.id
  providers = {
    hcloud = hcloud
  }
}
