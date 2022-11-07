resource "azurerm_resource_group" "ntire" {
  name     = var.azurerm_resource_group_details.name
  location = var.azurerm_resource_group_details.location
}
resource "azurerm_virtual_network" "ntire_network" {
  name                = var.ntire_network.name
  location            = var.azurerm_resource_group_details.location
  resource_group_name = var.azurerm_resource_group_details.name
  address_space       = var.ntire_network.address_space
    
}
resource "azurerm_subnet" "subnets" {
    count=length(var.subnet_details.name)
  name                 = var.subnet_details.name[count.index]
  resource_group_name  = var.azurerm_resource_group_details.name
  virtual_network_name = var.ntire_network.name
  address_prefixes     = [cidrsubnet(var.ntire_network.address_space[0],8,count.index)]

  
  depends_on = [
    azurerm_resource_group.ntire,
    azurerm_virtual_network.ntire_network
  ]

}
