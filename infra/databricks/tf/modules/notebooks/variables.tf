# ============================================================================
# Databricks Notebook Module - Variables
# ============================================================================

variable "notebooks" {
  description = "List of notebook configurations"
  type        = any
  default     = []
}
