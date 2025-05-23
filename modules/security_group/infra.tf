resource "aws_security_group" "security_group" {
  name        = "my-sg"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

  tags = {
    Name        = "MySecurityGroup"
    Environment = var.environment
  }
}