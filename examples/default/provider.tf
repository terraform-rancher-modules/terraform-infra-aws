provider "aws" {
  access_key = var.aws_secret_key
  secret_key = var.aws_access_key
  region     = var.aws_region
}
