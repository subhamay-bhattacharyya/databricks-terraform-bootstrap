# ============================================================================
# Databricks Cluster Module - Outputs
# ============================================================================

output "cluster_ids" {
  description = "Map of cluster names to their IDs"
  value       = { for k, v in databricks_cluster.this : v.cluster_name => v.id }
}

output "cluster_urls" {
  description = "Map of cluster names to their URLs"
  value       = { for k, v in databricks_cluster.this : v.cluster_name => v.url }
}
