variable "sqlserver_name" {
    type = string
    description = "The name of the database server to create"
    default = "todo-sqlserver"
}

variable "database_name" {
    type = string
    description = "The name of the database to create"
    default = "todo-database"
}

variable "administrator_login" {
    type = string
    description = "The administrator login for the database server"
    default = "sqladmin"
}

variable "administrator_login_password" {
    type = string
    description = "The administrator login password for the database server"
    default = "P@ssw0rd1234"
}

variable "collation" {
    type = string
    description = "The collation of the database"
    default = "Latin1_General_CI_AS"
}

variable "max_size_gb" {
    type = number
    description = "The max size of the database in gigabytes"
    default = 1
}

variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the database server"
}

variable "location" {
    type = string
    description = "The location/region where the database server will be created"
}