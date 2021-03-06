module "azurerm_stream_analytics_stream_input_eventhub" {
  source = "./modules/azurerm/r/azurerm_stream_analytics_stream_input_eventhub"

  eventhub_consumer_group_name = null
  eventhub_name                = null
  name                         = null
  resource_group_name          = null
  servicebus_namespace         = null
  shared_access_policy_key     = null
  shared_access_policy_name    = null
  stream_analytics_job_name    = null

  serialization = [{
    encoding        = null
    field_delimiter = null
    type            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
