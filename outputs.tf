output "data_catalog_policy_tag_iam_bindings_id" {
  description = "Map of id values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_catalog_policy_tag_iam_bindings_condition" {
  description = "Map of condition values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "data_catalog_policy_tag_iam_bindings_etag" {
  description = "Map of etag values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "data_catalog_policy_tag_iam_bindings_members" {
  description = "Map of members values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "data_catalog_policy_tag_iam_bindings_policy_tag" {
  description = "Map of policy_tag values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no policy_tag are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => v.policy_tag if v.policy_tag != null && length(v.policy_tag) > 0 }
}
output "data_catalog_policy_tag_iam_bindings_role" {
  description = "Map of role values across all data_catalog_policy_tag_iam_bindings, keyed the same as var.data_catalog_policy_tag_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_binding.data_catalog_policy_tag_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

