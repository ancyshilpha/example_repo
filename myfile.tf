resource "azurerm_resource_group" "example" {
  name     = "rg-example"
  location = "West Europe"
}
 
 
resource "azurerm_virtual_network" "vnet-test" {
    name = "vnet-rg-test"
    resource_group_name = azurerm_resource_group.example.name
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.example.location
    tags = {
      env = "prod"
    }
}
 
