resource "azurerm_resource_group" "todolist" {
  name     = var.resource_group_name
  location = var.location
}