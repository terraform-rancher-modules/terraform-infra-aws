output "instances_public_ip" {
  value = aws_instance.instance.*.public_ip
}

output "instances_private_ip" {
  value = aws_instance.instance.*.private_ip
}

output "ssh_key_path" {
  depends_on = [aws_instance.instance[0]]
  value      = local.create_new_key_pair ? local.new_key_pair_path : var.ssh_key_pair_path
}