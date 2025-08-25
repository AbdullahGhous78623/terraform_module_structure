variable "vpc_id" {
  type = string
}

# Public
variable "public_subnet_cidr" { type = string }
variable "public_subnet_az"   { type = string }
variable "public_name"        { type = string }

# Private
variable "private_subnet_cidr" { type = string }
variable "private_subnet_az"   { type = string }
variable "private_name"        { type = string }
