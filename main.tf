# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

module "resource-group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "database" {
  source                          = "./modules/database"
  depends_on                      = [module.resource-group]
  resource_group_name             = var.resource_group_name
  location                        = var.location
  sqlserver_version               = var.sqlserver_version
  administrator_login             = var.administrator_login
  administrator_login_password    = var.administrator_login_password
  collation                       = var.collation
  database_name                   = var.database_name
  sqlserver_name                  = var.sqlserver_name
  azurerm_mssql_database_sku_name = var.azurerm_mssql_database_sku_name
}

data "azurerm_client_config" "current" {}

module "key-vaults" {
  source                                      = "./modules/key-vaults"
  depends_on                                  = [module.resource-group]
  keyvault_name                               = var.keyvault_name
  resource_group_name                         = var.resource_group_name
  location                                    = var.location
  tenant_id                                   = data.azurerm_client_config.current.tenant_id
  object_id                                   = data.azurerm_client_config.current.object_id
  azurerm_key_vault_access_policy_permissions = var.azurerm_key_vault_access_policy_permissions
  azurerm_key_vault_sku                       = var.azurerm_key_vault_sku
}

module "app" {
  source              = "./modules/app"
  depends_on          = [module.resource-group, module.database, module.key-vaults]
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_name   = var.service_plan_name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}