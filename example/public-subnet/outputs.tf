output "public_subnet_cidrs" {
  value       = module.subnet.public_subnet_cidrs
  description = "The CIDR of the subnet."
}

output "public_subnet_cidrs_ipv6" {
  value       = module.subnet.public_subnet_cidrs_ipv6
  description = "The CIDR of the subnet."
}

output "public_tags" {
  value       = module.subnet.public_tags
  description = "A mapping of tags to assign to the resource."
}

output "public_subnet_id" {
  value       = module.subnet.public_subnet_id
  description = "The ID of the public subnet"
}

output "public_subnet_arn" {
  value       = module.subnet.public_subnet_arn
  description = "The ARN of the public subnet."
}

output "public_subnet_tags_all" {
  value       = module.subnet.public_subnet_tags_all
  description = "All tags associated with the public subnet."
}

output "public_subnet_owner_id" {
  value       = module.subnet.public_subnet_owner_id
  description = "The AWS account ID that owns the public subnet."
}
