terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_data_lake_store_firewall_rule" "this" {
  account_name        = var.account_name
  end_ip_address      = var.end_ip_address
  name                = var.name
  resource_group_name = var.resource_group_name
  start_ip_address    = var.start_ip_address

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

