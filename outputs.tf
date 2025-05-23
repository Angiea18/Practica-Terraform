output "ec2_instance_public_ips" {
    description = "Public IP addresses of all EC2 instances"
    value       = [for instance in aws_instance.example : instance.public_ip]
}