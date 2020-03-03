output "id" {
  description = "returns a string"
  value       = azurerm_network_ddos_protection_plan.this.id
}

output "virtual_network_ids" {
  description = "returns a list of string"
  value       = azurerm_network_ddos_protection_plan.this.virtual_network_ids
}

output "this" {
  value = azurerm_network_ddos_protection_plan.this
}

