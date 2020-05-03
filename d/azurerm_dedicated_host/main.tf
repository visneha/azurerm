terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

data "azurerm_dedicated_host" "this" {
  dedicated_host_group_name = var.dedicated_host_group_name
  name                      = var.name
  resource_group_name       = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

