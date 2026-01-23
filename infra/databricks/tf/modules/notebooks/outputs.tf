# ============================================================================
# Databricks Notebook Module - Outputs
# ============================================================================

output "notebook_paths" {
  description = "Map of notebook paths to their IDs"
  value       = { for k, v in databricks_notebook.this : v.path => v.id }
}
