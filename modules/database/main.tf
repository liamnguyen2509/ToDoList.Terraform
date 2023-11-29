resource "azurerm_mssql_server" "todolist" {
  name                         = var.sqlserver_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sqlserver_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mssql_database" "todolist" {
  name           = var.database_name
  server_id      = azurerm_mssql_server.todolist.id
  collation      = var.collation
  sku_name       = var.azurerm_mssql_database_sku_name

  tags = {
    foo = "bar"
  }
}