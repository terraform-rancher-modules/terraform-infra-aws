# Required
variable "aws_access_key" {
  type        = string
  description = "(Optional) AWS access key used to create infrastructure"
  default     = null
}

# Required
variable "aws_secret_key" {
  type        = string
  description = "(Optional) AWS secret key used to create AWS infrastructure"
  default     = null
}

variable "aws_region" {
  type        = string
  description = "AWS region used for all resources"
  default     = "us-east-1"
}

# Required
variable "prefix" {
  type        = string
  description = "Prefix added to names/tags of all resources"
  default     = "rancher-terraform"
}

variable "instance_type" {
  type        = string
  description = "Instance type used for all EC2 instances"
  default     = "t3a.medium"
}

variable "instance_disk_size" {
  type        = string
  description = "Specify root disk size (GB)"
  default     = "80"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
  default     = 3
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID to create the instance(s) in"
  default     = null
}

variable "create_ssh_key_pair" {
  type        = bool
  description = "Specify if a new SSH key pair needs to be created for the instances"
  default     = false
}

variable "ssh_key_pair_name" {
  type        = string
  description = "Specify the SSH key name to use (that's already present in AWS)"
  default     = null
}

variable "ssh_key_pair_path" {
  type        = string
  description = "Path to the SSH private key used as the key pair (that's already present in AWS)"
  default     = null
}

variable "ssh_private_key_path" {
  type        = string
  description = "Path to write the generated SSH private key"
  default     = null
}

variable "install_docker" {
  type        = bool
  description = "Should install docker while creating the instance"
  default     = true
}

variable "docker_version" {
  type        = string
  description = "Docker version to install on nodes"
  default     = "20.10"
}

variable "create_security_group" {
  type        = bool
  description = "Should create the security group associated with the instance(s)"
  default     = true
}

# TODO: Add a check based on above value
variable "instance_security_group" {
  type        = string
  description = "If chosen to not create security group, this should be provided"
  default     = ""
}

variable "ssh_username" {
  type        = string
  description = "Username used for SSH with sudo access"
  default     = "ubuntu"
}