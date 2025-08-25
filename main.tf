# VPC
module "vpc" {
  source           = "./modules/vpc"
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  name             = var.vpc_name
}

# Subnets
module "subnets" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id

  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_az   = var.public_subnet_az
  public_name        = var.public_subnet_name

  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_az   = var.private_subnet_az
  private_name        = var.private_subnet_name
}

# Internet Gateway
module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
  name   = var.igw_name
}

# NAT Gateway (with EIP)
module "natgw" {
  source     = "./modules/natgw"
  subnet_id  = module.subnets.public_subnet_id
  eip_name   = var.eip_name
  natgw_name = var.nat_name
}

# Route Tables (public via IGW, private via NATGW)
module "route_tables" {
  source = "./modules/route-tables"

  vpc_id            = module.vpc.vpc_id
  igw_id            = module.igw.igw_id
  natgw_id          = module.natgw.natgw_id
  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id

  public_rt_name  = var.public_rt_name
  private_rt_name = var.private_rt_name
}

# EC2 Instances
module "ec2" {
  source = "./modules/ec2"

  public_subnet_id  = module.subnets.public_subnet_id
  private_subnet_id = module.subnets.private_subnet_id

  public_instance_ami   = var.public_instance_ami
  private_instance_ami  = var.private_instance_ami
  instance_type         = var.instance_type
  key_name              = var.key_name
  public_instance_name  = var.public_instance_name
  private_instance_name = var.private_instance_name
}
