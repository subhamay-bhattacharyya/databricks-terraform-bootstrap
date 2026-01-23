# ============================================================================
# Databricks Workspace Module - Outputs
# ============================================================================

output "folder_paths" {
  description = "Map of folder paths to their IDs"
  value       = { for k, v in databricks_directory.this : v.path => v.id }
}
