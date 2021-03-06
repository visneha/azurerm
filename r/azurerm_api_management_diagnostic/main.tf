terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_api_management_diagnostic" "this" {
  api_management_name = var.api_management_name
  enabled             = var.enabled
  identifier          = var.identifier
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

