output "vpc_self_link" {
  description = "The URI of the created resource"
  value       = module.vpc_with_subnets.vpc_self_link
}

output "subnet_self_link" {
  description = "The URI of the created resource"
  value       = module.vpc_with_subnets.subnet_self_link
}
