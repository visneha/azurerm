module "azurerm_servicebus_queue_authorization_rule" {
  source = "./modules/azurerm/r/azurerm_servicebus_queue_authorization_rule"

  listen              = null
  manage              = null
  name                = null
  namespace_name      = null
  queue_name          = null
  resource_group_name = null
  send                = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
