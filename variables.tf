variable "route53_resolver_rule_associations" {
  description = <<EOT
Map of route53_resolver_rule_associations, attributes below
Required:
    - resolver_rule_id
    - vpc_id
Optional:
    - name
    - region
EOT

  type = map(object({
    resolver_rule_id = string
    vpc_id           = string
    name             = optional(string)
    region           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_rule_associations : (
        length(v.resolver_rule_id) >= 1 && length(v.resolver_rule_id) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

