output "instance_public_ips" {
  value = aws_instance.my_instances.*.public_ip
}