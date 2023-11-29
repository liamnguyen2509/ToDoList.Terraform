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

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account to create"
  default     = "todoliststorage"
}

variable "webapp_name" {
  type        = string
  description = "The name of the web app to create"
  default     = "todolistwebapp"
}

variable "functionapp_name" {
  type        = string
  description = "The name of the function app to create"
  default     = "todolistfunctionapp"
}

variable "webapi_name" {
  type        = string
  description = "The name of the web api to create"
  default     = "todolistapi"
}

variable "dotnet_version" {
  type        = string
  description = "The version of .NET to use"
}