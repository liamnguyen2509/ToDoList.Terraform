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
  source              = "./modules/database"
  depends_on          = [module.resource-group]
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "key-vault" {
  source                                      = "./modules/key-vaults"
  depends_on                                  = [module.resource-group]
  resource_group_name                         = var.resource_group_name
  location                                    = var.location
  tenant_id                                   = var.tenant_id
  object_id                                   = var.object_id
  key_vault_name                              = var.key_vault_name
  secret_name                                 = var.secret_name
  secret_value                                = var.secret_value
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