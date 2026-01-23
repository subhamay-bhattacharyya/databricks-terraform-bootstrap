# ============================================================================
# Databricks Workspace Module - Main Configuration
# ============================================================================

resource "databricks_directory" "this" {
  for_each = { for folder in var.folders : folder.path => folder }

  path = each.value.path
}
