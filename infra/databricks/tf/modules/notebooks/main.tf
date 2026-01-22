# ============================================================================
# Databricks Notebook Module - Main Configuration
# ============================================================================

resource "databricks_notebook" "this" {
  for_each = { for notebook in var.notebooks : "${notebook.folder_path}/${notebook.file_name}" => notebook }

  path     = "${each.value.folder_path}/${each.value.file_name}"
  language = each.value.language
  content_base64 = base64encode(file("${path.root}/${each.value.source_file}"))
}
