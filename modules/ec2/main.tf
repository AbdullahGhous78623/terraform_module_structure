# Public EC2 instance
resource "aws_instance" "public" {
  ami                         = var.public_instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.public_subnet_id
  associate_public_ip_address = true

  tags = {
    Name = var.public_instance_name
  }
}

# Private EC2 instance
resource "aws_instance" "private" {
  ami                         = var.private_instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.private_subnet_id
  associate_public_ip_address = false

  tags = {
    Name = var.private_instance_name
  }
}
