resource "azurerm_subnet" "subnet-test" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.address_prefixes
}