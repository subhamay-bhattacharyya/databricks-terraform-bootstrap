# ============================================================================
# Databricks Cluster Module - Main Configuration
# ============================================================================

resource "databricks_cluster" "this" {
  for_each = { for cluster in var.clusters : cluster.name => cluster }

  cluster_name            = each.value.name
  spark_version           = each.value.spark_version
  node_type_id            = each.value.node_type_id
  autotermination_minutes = each.value.autotermination_minutes
  data_security_mode      = lookup(each.value, "data_security_mode", "SINGLE_USER")

  # Use policy_id if provided, otherwise look up by policy_name
  policy_id = lookup(each.value, "policy_id", null) != null ? each.value.policy_id : (
    lookup(each.value, "policy_name", null) == "Personal Compute" && length(data.databricks_cluster_policy.personal) > 0 ? data.databricks_cluster_policy.personal[0].id : null
  )

  # For single-node clusters, num_workers must be 0
  # For multi-node clusters, use num_workers or autoscale
  num_workers = each.value.num_workers

  # Only configure autoscale for multi-node clusters (num_workers > 0)
  dynamic "autoscale" {
    for_each = each.value.num_workers > 0 && (lookup(each.value, "min_workers", null) != null || lookup(each.value, "max_workers", null) != null) ? [1] : []
    content {
      min_workers = lookup(each.value, "min_workers", each.value.num_workers)
      max_workers = lookup(each.value, "max_workers", each.value.num_workers)
    }
  }

  spark_conf = lookup(each.value, "spark_conf", {})

  custom_tags = merge(
    lookup(each.value, "tags", {}),
    {
      Environment = lookup(each.value, "environment", "dev")
      ManagedBy   = "Terraform"
    }
  )
}
