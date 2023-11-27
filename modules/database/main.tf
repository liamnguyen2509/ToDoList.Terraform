resource "azurerm_mssql_server" "todolist" {
  name                         = var.sqlserver_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mssql_database" "todolist" {
  name           = var.database_name
  server_id      = azurerm_mssql_server.todolist.id
  collation      = var.collation
  license_type   = "LicenseIncluded"
  max_size_gb    = var.max_size_gb
  read_scale     = true
  sku_name       = "S0"
  zone_redundant = true

  tags = {
    foo = "bar"
  }
}