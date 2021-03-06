terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_api_management_api_policy" "this" {
  api_management_name = var.api_management_name
  api_name            = var.api_name
  resource_group_name = var.resource_group_name
  xml_content         = var.xml_content
  xml_link            = var.xml_link

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

