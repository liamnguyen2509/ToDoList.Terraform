variable "key_vault_name" {
  type = string
  description = "The name of the key vault to create"
}

variable "tenant_id" {
  type = string
  description = "The tenant ID for the Azure subscription"
}

variable "object_id" {
  type = string
  description = "The object ID for the Azure AD service principal"
}

variable "secret_name" {
  type = string
  description = "The name of the secret to create"    
}

variable "secret_value" {
  type = string
  description = "The value of the secret to create"
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to create the key vault"
}

variable "location" {
  type = string
  description = "The location/region where the key vault will be created"
}

variable "azurerm_key_vault_sku" {
  type = string
  description = "The SKU name of the key vault"
}

variable "azurerm_key_vault_access_policy_permissions" {
  type = list(string)
  description = "The permissions for the key vault access policy"
}