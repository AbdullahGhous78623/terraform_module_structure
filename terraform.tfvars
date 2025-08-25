# Region
region = "us-east-1"

# VPC
vpc_cidr         = "10.0.0.0/16"
instance_tenancy = "default"
vpc_name         = "abdullah-vpc"

# Public Subnet
public_subnet_cidr = "10.0.1.0/24"
public_subnet_az   = "us-east-1a"
public_subnet_name = "abdullah-public-subnet"

# Private Subnet
private_subnet_cidr = "10.0.2.0/24"
private_subnet_az   = "us-east-1b"
private_subnet_name = "abdullah-private-subnet"

# IGW
igw_name = "abdullah-igw"

# NAT / EIP
eip_name = "abdullah-eip"
nat_name = "abdullah-nat-gw"

# Route Tables
public_rt_name  = "abdullah-public-rt"
private_rt_name = "abdullah-private-rt"

# EC2
public_instance_ami   = "ami-00ca32bbc84273381"
private_instance_ami  = "ami-0a232144cf20a27a5"
instance_type         = "t3.small"
key_name              = "abdullah-key1"
public_instance_name  = "abdullah-server-public"
private_instance_name = "abdullah-server-private"
