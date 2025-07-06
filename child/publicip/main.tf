resource "azurerm_public_ip" "pip-atit" {
    resource_group_name=var.resource_group_name
    location=var.location
    name=var.pip
  allocation_method = "Static"
}


  
