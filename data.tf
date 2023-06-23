data "azurerm_subscription" "current" {
  subscription_id = "765266c6-9a23-4638-af32-dd1e32613047"
}

data "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network
}
