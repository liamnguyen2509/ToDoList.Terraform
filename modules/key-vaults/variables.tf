variable "key_vault_name" {
  type = string
  description = "The name of the key vault to create"
}

variable "tenant_id" {
  type = string
  description = "The tenant ID for the Azure subscription"
  default     = "90eb4ea6-f2cf-4ca5-8332-a8ecb46c89b4"
}

variable "object_id" {
  type = string
  description = "The object ID for the Azure AD service principal"
  default     = "09da5451-bbb5-4841-82ae-07820cc46741"
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