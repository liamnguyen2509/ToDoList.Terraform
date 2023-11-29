resource "azurerm_service_plan" "todolist" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_windows_web_app" "todolist" {
  name                = var.webapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.todolist.id

  site_config {}
}


resource "azurerm_windows_web_app" "todolist_api" {
  name                = var.webapi_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.todolist.id

  site_config {
    always_on         = false
    app_command_line  = "dotnet TodoList.Api.dll"
    use_32_bit_worker = true
    application_stack {
      dotnet_version = var.dotnet_version
    }
  }

  app_settings = {
    "WEBSITES_PORT" = "5000"
  }
}