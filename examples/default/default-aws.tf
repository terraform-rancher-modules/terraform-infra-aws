module "upstream-cluster" {
  source = "../.."
  providers = {
    aws = aws
  }

  prefix = var.prefix
  instance_count = 1
  instance_ssh_key_name = var.instance_ssh_key_name
  ssh_private_key_path = "~/.ssh/id_ed25519"
#  should_create_security_group = false
}