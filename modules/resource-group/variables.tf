variable "resource_group_name" {
  type = string
  description = "The name of the resource group to create"
  default = "todo-resource-group"
}

variable "location" {
  type = string
  description = "The Azure Region in which all resources in this example should be created."
  default = "eastus"
}