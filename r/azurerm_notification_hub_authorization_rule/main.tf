terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_notification_hub_authorization_rule" "this" {
  listen                = var.listen
  manage                = var.manage
  name                  = var.name
  namespace_name        = var.namespace_name
  notification_hub_name = var.notification_hub_name
  resource_group_name   = var.resource_group_name
  send                  = var.send

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

