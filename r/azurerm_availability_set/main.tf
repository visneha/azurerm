terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_availability_set" "this" {
  location                     = var.location
  managed                      = var.managed
  name                         = var.name
  platform_fault_domain_count  = var.platform_fault_domain_count
  platform_update_domain_count = var.platform_update_domain_count
  proximity_placement_group_id = var.proximity_placement_group_id
  resource_group_name          = var.resource_group_name
  tags                         = var.tags

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

