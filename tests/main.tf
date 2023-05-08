module "upstream_cluster" {
  source              = "github.com/terraform-rancher-modules/terraform-infra-aws"
  aws_region          = "us-east-1"
  prefix              = "example-rancher"
  instance_count      = 1
  create_ssh_key_pair = true
}