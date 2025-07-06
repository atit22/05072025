resource "azurerm_subnet" "subnet-atit" {
    resource_group_name=var.resource_group_name
     virtual_network_name = var.vnet
    name=var.subnet
  address_prefixes = var.address_prefix
}


  
