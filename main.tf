# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }

  cloud {
    organization = "liamnguyen2509"
    workspaces {
      name = "ToDoListTerraform"
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
  version                         = var.version
  administrator_login             = var.administrator_login
  administrator_login_password    = var.administrator_login_password
  collation                       = var.collation
  database_name                   = var.database_name
  sqlserver_name                  = var.sqlserver_name
  azurerm_mssql_database_sku_name = var.azurerm_mssql_database_sku_name
}

data "azurerm_client_config" "current" {}

module "key-vault" {
  source                                      = "./modules/key-vaults"
  depends_on                                  = [module.resource-group]
  resource_group_name                         = var.resource_group_name
  location                                    = var.location
  tenant_id                                   = var.tenant_id
  object_id                                   = var.object_id
  key_vault_name                              = var.key_vault_name
  azurerm_key_vault_sku                       = var.azurerm_key_vault_sku
  azurerm_key_vault_access_policy_permissions = var.azurerm_key_vault_access_policy_permissions
}

module "app" {
  source              = "./modules/app"
  depends_on          = [module.resource-group, module.database, module.key-vault]
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