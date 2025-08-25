# General
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

# VPC
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}
variable "instance_tenancy" {
  description = "VPC tenancy"
  type        = string
}
variable "vpc_name" {
  description = "VPC Name (use abdullah-*)"
  type        = string
}

# Subnets
variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}
variable "public_subnet_az" {
  description = "AZ for public subnet"
  type        = string
}
variable "public_subnet_name" {
  description = "Public subnet name"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
}
variable "private_subnet_az" {
  description = "AZ for private subnet"
  type        = string
}
variable "private_subnet_name" {
  description = "Private subnet name"
  type        = string
}

# Internet Gateway
variable "igw_name" {
  description = "Internet Gateway name"
  type        = string
}

# NAT / EIP
variable "eip_name" {
  description = "Elastic IP name for NAT"
  type        = string
}
variable "nat_name" {
  description = "NAT Gateway name"
  type        = string
}

# Route Tables
variable "public_rt_name" {
  description = "Public route table name"
  type        = string
}
variable "private_rt_name" {
  description = "Private route table name"
  type        = string
}

# EC2
variable "public_instance_ami" {
  description = "AMI ID for public instance"
  type        = string
}
variable "private_instance_ami" {
  description = "AMI ID for private instance"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}
variable "public_instance_name" {
  description = "Name tag for public instance"
  type        = string
}
variable "private_instance_name" {
  description = "Name tag for private instance"
  type        = string
}
