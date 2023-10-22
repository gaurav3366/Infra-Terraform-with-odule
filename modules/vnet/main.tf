resource "azurerm_virtual_network" "vnet-test" {
  name                = "${var.prefix}-vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}