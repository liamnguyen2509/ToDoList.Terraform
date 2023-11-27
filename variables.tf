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
}

variable "location" {
  type        = string
  description = "The location/region where the service plan will be created"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID of the Azure account"
}

variable "object_id" {
  type        = string
  description = "The object ID of the Azure account"
}

variable "key_vault_name" {
  type        = string
  description = "The name of the key vault to create"
}

variable "secret_name" {
  type        = string
  description = "The name of the secret to create"
}

variable "secret_value" {
  type        = string
  description = "The value of the secret to create"
}