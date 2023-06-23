provider "azurerm" {
  features {}
}

resource "azurerm_public_ip" "ip" {
  name                = "20210889-public-ip"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_network_interface" "interface" {
  name                      = "20210889-nic"
  location                  = var.resource_group_location
  resource_group_name       = var.resource_group_name
  ip_configuration {
    name                          = "config"
    subnet_id                     = data.azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ip.id
  }
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "azurerm_linux_virtual_machine" "main" {
  name                = "devops-20210889"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  size                = "Standard_D2s_v3"
  admin_username      = "devops"
  disable_password_authentication = true
  network_interface_ids = [azurerm_network_interface.interface.id]
  os_disk {
    name              = "20210889-osdisk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  admin_ssh_key {
    username   = "devops"
    public_key = tls_private_key.example.public_key_openssh
  }

}
