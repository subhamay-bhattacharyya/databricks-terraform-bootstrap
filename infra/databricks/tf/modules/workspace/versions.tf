# ============================================================================
# Databricks Workspace Module - Provider Requirements
# ============================================================================

terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }
}
