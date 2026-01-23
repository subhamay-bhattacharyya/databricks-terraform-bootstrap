# --- root/dbx/tf/root/locals.tf ---

locals {
  # Load Databricks cluster configurations from JSON
  databricks_config = jsondecode(file("${path.module}/input-json/databricks.json"))

  # Extract warehouses/clusters and add project/environment naming
  single_node_clusters = [
    for cluster in local.databricks_config["single_node_clusters"] : merge(cluster, {
      name = "${var.project-name}-${cluster.name}-${var.environment-name}"
    })
  ]

  # Extract workspace folders
  workspace_folders = lookup(local.databricks_config, "workspace_folders", [])

  # Extract notebooks
  notebooks = lookup(local.databricks_config, "notebooks", [])
}