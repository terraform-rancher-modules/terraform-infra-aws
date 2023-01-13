module "upstream-cluster" {
  source = "../.."
  aws_access_key = var.aws_secret_key
  aws_secret_key = var.aws_secret_key
  prefix = var.prefix
  instance_count = 1
  instance_ssh_key_name = "leodotcloud"
  ssh_private_key_path = "~/.ssh/id_ed25519"
#  should_create_security_group = false
}