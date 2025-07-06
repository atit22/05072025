resource "azurerm_virtual_network" "vnet-atit" {
    resource_group_name=var.resource_group_name
    location=var.location
    name=var.vnet
  address_space = var.address_space
  
}


  
