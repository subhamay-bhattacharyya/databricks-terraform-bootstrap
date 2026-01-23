# --- root/dbx/tf/root/main.tf ---

# ============================================================================
# Databricks Bootstrap- Root Configuration
# ============================================================================
# This configuration orchestrates:
# Databcriska objects (Cluster, Database)
# ============================================================================

# ----------------------------------------------------------------------------
# Phase 1: Databricks Core Resources (Cloud-agnostic)
# ----------------------------------------------------------------------------

module "workspace" {
  source = "./modules/workspace"

  folders = local.workspace_folders
}

module "notebooks" {
  source = "./modules/notebooks"

  notebooks = local.notebooks

  depends_on = [module.workspace]
}

module "cluster" {
  source = "./modules/cluster"

  clusters = local.single_node_clusters
}

