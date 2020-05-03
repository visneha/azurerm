terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

data "azurerm_managed_application_definition" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}
