# --- root/dbx/tf/root/variables.tf ---

variable "aws-region" {
  type    = string
  default = "us-east-1"
}
######################################## Project Name ##############################################
variable "project-name" {
  description = "The name of the project"
  type        = string
  default     = "GitOps Minicamp 2024"
}
######################################## Environment Name ##########################################
variable "environment-name" {
  type        = string
  description = <<EOT
  (Optional) The environment in which to deploy our resources to.

  Options:
  - devl : Development
  - test: Test
  - prod: Production

  Default: devl
  EOT
  default     = "devl"

  validation {
    condition     = can(regex("^devl$|^test$|^prod$", var.environment-name))
    error_message = "Err: environment is not valid."
  }
}

variable "ci-pipeline" {
  description = "CI/CD pipeline configuration"
  type        = string
  default     = "true"
}
## Uncomment the following lines to use S3 as the backend for Terraform state management when running locally.
## For GitHub Actions, the backend is configured in the workflow file.

# variable "tf-state-bucket" {
#   description = "The name of the TF state S3 bucket"
#   type        = string
# }

# variable "bucket-name" {
#   description = "Name of the S3 bucket"
#   type        = string
# }

######################################## Databricks Configuration ##################################
variable "databricks-host" {
  description = "Databricks workspace URL (e.g., https://adb-1234567890123456.7.azuredatabricks.net)"
  type        = string
  sensitive   = true
  default     = null
}

variable "databricks-token" {
  description = "Databricks personal access token or service principal token"
  type        = string
  sensitive   = true
  default     = null
}