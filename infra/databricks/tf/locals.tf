# --- root/dbx/tf/root/locals.tf ---

locals {
  # Load Databricks cluster configurations from JSON
  databricks_config = jsondecode(file("${path.module}/input-json/databricks.json"))

  # Extract warehouses/clusters
  single_node_clusters = local.databricks_config["single_node_clusters"]

  # Extract workspace folders
  workspace_folders = lookup(local.databricks_config, "workspace_folders", [])

  # Extract notebooks
  notebooks = lookup(local.databricks_config, "notebooks", [])
}