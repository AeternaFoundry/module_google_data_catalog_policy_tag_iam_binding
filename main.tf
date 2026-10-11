resource "google_data_catalog_policy_tag_iam_binding" "data_catalog_policy_tag_iam_bindings" {
  for_each = var.data_catalog_policy_tag_iam_bindings

  members    = each.value.members
  policy_tag = each.value.policy_tag
  role       = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

