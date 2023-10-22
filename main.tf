resource "azurerm_resource_group" "rg1" {
  name     = var.rgname
  location = var.rglocation
}
module "vnet" {
  source              = "./modules/vnet"
  name                = var.prefix
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = var.address_space
  depends_on          = [azurerm_resource_group.rg1]
}
module "subnet" {
  source              = "./modules/subnet"
  name                = var.prefix
  resource_group_name = azurerm_resource_group.rg1.name
  vnet-name           = module.vnet.vnet-name
  address_prefixes    = var.address_prefixes
  depends_on          = [module.vnet]
}
module "nic" {
  source              = "./modules/nic"
  name                = var.prefix
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  subnet_id           = module.subnet.subnet_id
}
module "vm" {
  source              = "./modules/vm"
  name                = var.prefix
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  vm_size             = var.vm_size
  nic_id              = [module.nic.nic_id]
  publisher           = var.publisher
  offer               = var.offer
  sku                 = var.sku
  depends_on          = [module.vnet]
  os_disk_name        = var.os_disk_name
  caching             = var.caching
}
module "aks" {
  source                 = "./modules/aks"
  name                   = "${var.prefix}-aks"
  location               = azurerm_resource_group.rg1.location
  resource_group_name    = azurerm_resource_group.rg1.name
  vm_size                = var.aks_vm_size
  dns_prefix             = "${var.prefix}-dns"
  default_node_pool_name = "${var.prefix}np"
  node_count             = var.node_count
  identity               = var.identity
  tags_aks               = var.tags_aks
}