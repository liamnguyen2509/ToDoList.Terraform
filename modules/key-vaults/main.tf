resource "azurerm_key_vault" "todolist" {
  name                        = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = var.tenant_id
  sku_name                        = var.azurerm_key_vault_sku
  enabled_for_disk_encryption     = true
  enabled_for_deployment          = true
  enabled_for_template_deployment = true
}

resource "azurerm_key_vault_access_policy" "todolist" {
  key_vault_id          = azurerm_key_vault.todolist.id
  tenant_id             = var.tenant_id
  object_id             = var.object_id
  secret_permissions    = var.azurerm_key_vault_access_policy_permissions
}

resource "azurerm_key_vault_secret" "todolist" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = azurerm_key_vault.todolist.id
  depends_on = [azurerm_key_vault_access_policy.todolist]
}