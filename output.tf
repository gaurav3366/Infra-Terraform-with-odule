output "rgname" {
  value = azurerm_resource_group.rg1.name
}
output "rglocation" {
  value = azurerm_resource_group.rg1.location
}
output "vnet-name" {
  value = module.vnet.vnet-name
}
output "vnet-location" {
  value = module.vnet.vnet-location
}
output "subnet-name" {
  value = module.subnet.subnet-name
}
output "subnet_id" {
  value = module.subnet.subnet_id
}
output "nic_id" {
  value = module.nic.nic_id
}
output "vm-name" {
  value = module.vm.vm-name
}