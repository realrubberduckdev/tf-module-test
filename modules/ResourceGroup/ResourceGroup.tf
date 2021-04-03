variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
  tags = var.tags
}

output "name" {
  value = azurerm_resource_group.resource_group.name
}