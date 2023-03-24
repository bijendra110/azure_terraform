#resource "azurerm_network_security_group" "RG-NSG" {
#  name                = "PROD-NSG"
#  location            = azurerm_resource_group.RG.location
#  resource_group_name = azurerm_resource_group.RG.name
#}

resource "azurerm_virtual_network" "RG-VNET" {
  name                = "var.name"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = ["10.0.0.0/24"]

  subnet {
    name           = "DBSubnet"
    address_prefix = "10.0.0.0/24"
  }

  tags = {
    environment = "Production"
  }
}