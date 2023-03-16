resource "azurerm_resource_group" "netfort_vm" {
  name     = "netfort_vm-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "netfort_vm" {
  name                = "netfort_vm-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.netfort_vm.location
  resource_group_name = azurerm_resource_group.netfort_vm.name
}

resource "azurerm_subnet" "netfort_vm" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.netfort_vm.name
  virtual_network_name = azurerm_virtual_network.netfort_vm.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "netfort_vm" {
  name                = "netfort_vm-nic"
  location            = azurerm_resource_group.netfort_vm.location
  resource_group_name = azurerm_resource_group.netfort_vm.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.netfort_vm.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "netfort_vm" {
  name                = "netfort_vm-machine"
  resource_group_name = azurerm_resource_group.netfort_vm.name
  location            = azurerm_resource_group.netfort_vm.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.netfort_vm.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
