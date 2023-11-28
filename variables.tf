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
  default     = "7a4ade8e-7afc-4d92-afb7-d08dfbb5ec90"
}

variable "object_id" {
  type        = string
  description = "The object ID of the Azure account"
  default     = "b020d4c5-a4ae-40e9-8e4d-f920d3437426"
}

variable "key_vault_name" {
  type        = string
  description = "The name of the key vault to create"
  default     = "todo-key-vault"
}

variable "secret_name" {
  type        = string
  description = "The name of the secret to create"
  default     = "todo-secret"
}

variable "secret_value" {
  type        = string
  description = "The value of the secret to create"
  default     = "todo-secret-value"
}