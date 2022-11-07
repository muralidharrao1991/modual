output "resourcegroupname" {
    value=azurerm_resource_group.ntire.name
  
}

output "vnetid" {
    value=azurerm_virtual_network.ntire_network.id
  
}
output "vnetname" {
    value = azurerm_virtual_network.ntire_network.name
  
}
output "location" {
    value=azurerm_resource_group.ntire.location
  
}
output "vnet_addressspce" {
    value=azurerm_virtual_network.ntire_network.address_space
  
}
output "subnets" {
    value = azurerm_subnet.subnets
  
}
output "subnetcount" {
    value= length(var.subnet_details.name)
  
}

   

  
