resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.prefix}-vm"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = var.nic_id //[azurerm_network_interface.main.id]
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer 
    sku       = var.sku  
  }
  storage_os_disk {
    name              =  var.os_disk_name //"myosdisk1"
    caching           = var.caching //"ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "Development"
  }
}