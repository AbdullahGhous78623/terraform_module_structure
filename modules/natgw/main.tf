# Elastic IP for NAT
resource "aws_eip" "this" {
  domain = "vpc"
  tags = {
    Name = var.eip_name
  }
}

# NAT Gateway in the public subnet
resource "aws_nat_gateway" "this" {
  subnet_id     = var.subnet_id
  allocation_id = aws_eip.this.id

  tags = {
    Name = var.natgw_name
  }
}
