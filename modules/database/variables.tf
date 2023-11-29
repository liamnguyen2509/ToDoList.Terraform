variable "sqlserver_name" {
    type = string
    description = "The name of the database server to create"
}

variable "database_name" {
    type = string
    description = "The name of the database to create"
}

variable "administrator_login" {
    type = string
    description = "The administrator login for the database server"
}

variable "administrator_login_password" {
    type = string
    description = "The administrator login password for the database server"
}

variable "collation" {
    type = string
    description = "The collation of the database"
}


variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the database server"
}

variable "location" {
    type = string
    description = "The location/region where the database server will be created"
}

variable "version" {
    type = string
    description = "The version of the database server"
}

variable "azurerm_mssql_database_sku_name" {
    type = string
    description = "The SKU name of the database"
}