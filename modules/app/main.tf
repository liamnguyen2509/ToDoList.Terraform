resource "azurerm_service_plan" "todolist" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_storage_account" "todolist" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_windows_web_app" "todolist" {
  name                = var.webapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.todolist.id

  site_config {}
}


resource "azurerm_windows_function_app" "todolist" {
  name                = var.functionapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.todolist.id
  storage_account_name       = azurerm_storage_account.todolist.name
  storage_account_access_key = azurerm_storage_account.todolist.primary_access_key

  site_config {}
}