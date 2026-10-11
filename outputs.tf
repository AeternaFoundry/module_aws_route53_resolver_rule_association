output "route53_resolver_rule_associations_id" {
  description = "Map of id values across all route53_resolver_rule_associations, keyed the same as var.route53_resolver_rule_associations"
  value       = { for k, v in aws_route53_resolver_rule_association.route53_resolver_rule_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_resolver_rule_associations_name" {
  description = "Map of name values across all route53_resolver_rule_associations, keyed the same as var.route53_resolver_rule_associations"
  value       = { for k, v in aws_route53_resolver_rule_association.route53_resolver_rule_associations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_resolver_rule_associations_region" {
  description = "Map of region values across all route53_resolver_rule_associations, keyed the same as var.route53_resolver_rule_associations"
  value       = { for k, v in aws_route53_resolver_rule_association.route53_resolver_rule_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "route53_resolver_rule_associations_resolver_rule_id" {
  description = "Map of resolver_rule_id values across all route53_resolver_rule_associations, keyed the same as var.route53_resolver_rule_associations"
  value       = { for k, v in aws_route53_resolver_rule_association.route53_resolver_rule_associations : k => v.resolver_rule_id if v.resolver_rule_id != null && length(v.resolver_rule_id) > 0 }
}
output "route53_resolver_rule_associations_vpc_id" {
  description = "Map of vpc_id values across all route53_resolver_rule_associations, keyed the same as var.route53_resolver_rule_associations"
  value       = { for k, v in aws_route53_resolver_rule_association.route53_resolver_rule_associations : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

