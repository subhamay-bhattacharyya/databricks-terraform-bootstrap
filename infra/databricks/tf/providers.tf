# ============================================================================
# Terraform and Provider Configuration
# ============================================================================

terraform {
  required_version = ">= 1.0"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }
}

# ============================================================================
# Databricks Provider Configuration
# ============================================================================
# Authentication: Uses service principal or personal access token
# Priority order:
# 1. Variables (databricks-host, databricks-token) if provided
# 2. Environment variables (DATABRICKS_HOST, DATABRICKS_TOKEN)
provider "databricks" {
  host  = var.databricks-host
  token = var.databricks-token
}