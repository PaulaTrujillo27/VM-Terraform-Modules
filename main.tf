provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = "${var.prefix}-rg"
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.prefix}-subnet1"
  resource_group_name  = "${var.prefix}-rg"
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "internal_2" {
  name                 = "${var.prefix}-subnet2"
  resource_group_name  = "${var.prefix}-rg"
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

module "vm" {
  source    = "./modules/vm"
  prefix    = var.prefix
  subnet-id = azurerm_subnet.internal.id
  location  = var.location
  user      = var.user
  password  = var.password
}