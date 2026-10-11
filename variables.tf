variable "data_catalog_policy_tag_iam_bindings" {
  description = <<EOT
Map of data_catalog_policy_tag_iam_bindings, attributes below
Required:
    - members
    - policy_tag
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members    = set(string)
    policy_tag = string
    role       = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

