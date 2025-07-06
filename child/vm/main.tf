resource "azurerm_network_interface" "nic-atit" {
  name=var.nic
  resource_group_name = var.resource_group_name
  location=var.location
}

ip_conifguration{
  public_ip_address_id=data.azurerm_public_ip.pip.id
  name="internal"
  subnet_id=data.azurerm_subnet.subnet.id
  private_ip_address_allocation="Dynamic"
}

resource "azurerm_linux_virtual_machine" "vm-atit" {
name=var.vm
resource_group_name = var.resource_group_name
location=var.location
size="Standard_F2"
admin_username=data.azurerm_key_vault_secret.vm-username.value
admin_password=data.azurerm_key_vault_secret.vm-password.value
network_interface_ids = [
    azurerm_network_interface.example.id]
    disable_password_authentication="false"
  
 os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    }
   }
   
   


  
