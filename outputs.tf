output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.subnets.public_subnet_id
}

output "private_subnet_id" {
  value = module.subnets.private_subnet_id
}

output "igw_id" {
  value = module.igw.igw_id
}

output "natgw_id" {
  value = module.natgw.natgw_id
}

output "public_route_table_id" {
  value = module.route_tables.public_rt_id
}

output "private_route_table_id" {
  value = module.route_tables.private_rt_id
}

output "public_instance_id" {
  value = module.ec2.public_instance_id
}

output "private_instance_id" {
  value = module.ec2.private_instance_id
}

output "public_instance_public_ip" {
  value = module.ec2.public_instance_public_ip
}
