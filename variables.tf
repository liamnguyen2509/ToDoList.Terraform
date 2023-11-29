variable "service_plan_name" {
  type        = string
  description = "The name of the service plan to create"
  default     = "todo-service-plan"
}

variable "os_type" {
  type        = string
  description = "The operating system type of the service plan"
  default     = "Windows"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the service plan"
  default     = "F1"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the service plan"
  default     = "todo-resource-group"
}

variable "location" {
  type        = string
  description = "The location/region where the service plan will be created"
  default     = "West US"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID of the Azure account"
  default     = "90eb4ea6-f2cf-4ca5-8332-a8ecb46c89b4"
}

variable "object_id" {
  type        = string
  description = "The object ID of the Azure account"
  default     = "09da5451-bbb5-4841-82ae-07820cc46741"
}

variable "key_vault_name" {
  type        = string
  description = "The name of the key vault to create"
  default     = "todo-key-vault"
}

variable "azurerm_key_vault_sku" {
  type        = string
  description = "The SKU name of the key vault"
  default     = "standard"
}

variable "azurerm_key_vault_access_policy_permissions" {
  type        = list(string)
  description = "The permissions for the key vault access policy"
  default     = ["Get", "List"]
}

variable "administrator_login" {
  type        = string
  description = "The administrator login for the database server"
  default     = "sqladmin"
}

variable "administrator_login_password" {
  type        = string
  description = "The administrator login password for the database server"
  default     = "P@ssw0rd1234"
}

variable "collation" {
  type        = string
  description = "The collation of the database"
  default     = "Latin1_General_CI_AS"
}

variable "database_name" {
  type        = string
  description = "The name of the database to create"
  default     = "todo-database"
}

variable "sqlserver_version" {
  type        = string
  description = "The version of the database server"
  default     = "12.0"
}

variable "azurerm_mssql_database_sku_name" {
  type        = string
  description = "The SKU name of the database"
  default     = "Basic"
}

variable "sqlserver_name" {
  type        = string
  description = "The name of the database server to create"
  default     = "todo-sqlserver"
}



