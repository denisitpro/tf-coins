resource "hcloud_ssh_key" "devops_ssh_public_key" {
  name       = "devops-ssh-key"
  public_key = var.devops_public_key
}