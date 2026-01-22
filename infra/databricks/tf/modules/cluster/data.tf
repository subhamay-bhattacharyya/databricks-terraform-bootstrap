# ============================================================================
# Databricks Cluster Module - Data Sources
# ============================================================================

# Look up the Personal Compute cluster policy by name
data "databricks_cluster_policy" "personal" {
  count = length([for c in var.clusters : c if lookup(c, "policy_name", null) == "Personal Compute"]) > 0 ? 1 : 0
  name  = "Personal Compute"
}
