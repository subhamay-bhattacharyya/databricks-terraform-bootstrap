# --- root/dbx/tf/root/backends.tf ---

terraform {
  cloud {

    organization = "subhamay-bhattacharyya-projects"

    workspaces {
      name = "databricks-terraform-bootstrap"
    }
  }
}