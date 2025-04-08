resource "gitlab_group_variable" "this" {
  group = var.group
  key   = var.key
  value = var.value

  description       = var.description
  environment_scope = var.environment_scope
  hidden            = var.hidden
  masked            = var.masked
  protected         = var.protected
  raw               = var.raw
  variable_type     = var.variable_type
}
