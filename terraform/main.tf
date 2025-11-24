resource "azure_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name = var.v-net
  location = var.location
  resource_group_name = var.resource_group_name
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name = var.sub-net
  resource_group_name = var.resource_group_name
  virtual_network_name = azure_visrtual_network.vet.name
  address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_virtual_network_interface" "nic" {
  name = "${var.vm_name}-nic"
  location = var.location
  resource = var.resource_group_name

  ip_configuration {
    name = car.vm_name
    resource_group_name = var.resource_group_name 
    location = var.location
    size = "Standard_B1s"
    admin_username = var.admin_username
    admin_password = var.admin_password

    network_interface_ids = [
      azurerm_network_interface.nic.id
    ]

    os_disk {
      caching = "ReadWrite"
      stirage_account_type = "Standard_LRS"
    }

    source_image_reference {
      publisher = "Canonical"
      offer = "0001-com-ubuntu-server-focal"
      sku = "20_04-lts"
      version = "latest"
    }
}

    
