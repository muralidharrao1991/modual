variable "azurerm_resource_group_details" {
    type=object({
    name=string
    location = string
    })
  
}
variable "ntire_network" {
    type=object ({
        name=string
        address_space=list(string)
         
    })
  
}
variable "subnet_details" {
    type=object({
        name=list(string)
       
        
    })
  
}
