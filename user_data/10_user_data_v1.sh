#cloud-config
users:
    - name: ubuntu
      sudo: ALL=(ALL) NOPASSWD:ALL
      shell: /bin/bash
      ssh_authorized_keys:
        - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO7MRK0SR14QnaopknO/V74zRhlZpbHCX8vefJg1nQha den@pub
        - sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIHwMSkxx3cD9aYZEnQd/hVZT6x9YR2acuU6fy1AMWI3XAAAACHNzaDpjdHgy hw@key
      lock_passwd: true
