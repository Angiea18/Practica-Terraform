resource "aws_instance" "my_instances" {
  count         = 2
  ami           = var.instance_ami_id
  instance_type = "t2.micro"

  tags = {
    Name        = "Instance-${count.index + 1}"
    Environment = var.environment
  }
}