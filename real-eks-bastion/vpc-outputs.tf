#  AZs
output "azs" {
  value       = module.vpc.azs
}
# VPC ID
output "vpc_id" {
  value       = module.vpc.vpc_id
}

#  CIDR blocks
output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
}

#  Private Subnets
output "private_subnets" {
  value       = module.vpc.private_subnets
}

#  Public Subnets
output "public_subnets" {
  value       = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  value       = module.vpc.nat_public_ips
}

