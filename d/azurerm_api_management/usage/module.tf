module "azurerm_api_management" {
  source = "./modules/azurerm/d/azurerm_api_management"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
