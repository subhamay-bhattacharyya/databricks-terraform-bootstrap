# --- root/dbx/tf/root/outputs.tf ---

# ============================================================================
# Root Module Outputs
# ============================================================================

# ----------------------------------------------------------------------------
# Cluster Outputs
# ----------------------------------------------------------------------------

output "clusters" {
  description = "Map of cluster names to their details (ID and URL)"
  value = {
    for name in keys(module.cluster.cluster_ids) : name => {
      id  = module.cluster.cluster_ids[name]
      url = module.cluster.cluster_urls[name]
    }
  }
}

# ----------------------------------------------------------------------------
# Workspace Folder Outputs
# ----------------------------------------------------------------------------

output "workspace_folder_paths" {
  description = "Map of folder paths to their IDs"
  value       = module.workspace.folder_paths
}

# ----------------------------------------------------------------------------
# Notebook Paths Outputs
# ----------------------------------------------------------------------------

output "notebook_paths" {
  description = "Map of notebook paths to their IDs"
  value       = module.notebooks.notebook_paths
}
