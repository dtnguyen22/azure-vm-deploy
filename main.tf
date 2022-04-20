terraform {             
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"         
    }                                    
  }
                                             
  required_version = ">= 1.1.0"
}                                                                                                                                                                                    

provider "azurerm" {
  features {}
    client_id       =   "b16d6790-34f5-471f-9a72-716a2d452676"
    tenant_id       =   "8de31201-13f4-4501-908e-8d2335233992"
    subscription_id =   "cd187976-0dee-4a1e-b20d-f215b7e8a51d"
    client_secret   =   "XCGY_uH0vsQ1koAE1lzH5j~KSxmmCRGR4J"
}

/*
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-resources"
  location = var.location
}

resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/22"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

 resource   "azurerm_public_ip"   "k8s-publicip"   { 
   name   =   "${var.prefix}pubip1" 
   location   =   "${var.location}" 
   resource_group_name   =   azurerm_resource_group.main.name 
   allocation_method   =   "Dynamic" 
   sku   =   "Basic" 
 } 

resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.k8s-publicip.id
  }
}

resource "azurerm_linux_virtual_machine" "main" {
  name                            = "${var.prefix}-vm"
  resource_group_name             = azurerm_resource_group.main.name
  location                        = azurerm_resource_group.main.location
  size                            = "${var.vm_size}"
  admin_username                  = "${var.username}"
  admin_password                  = "${var.password}"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}
*/

/*
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

resource   "azurerm_subnet"   "frontendsubnet"   { 
   name   =   "frontendSubnet" 
   resource_group_name   =    azurerm_resource_group.rg.name 
   virtual_network_name   =   azurerm_virtual_network.vnet.name 
   address_prefixes   =   ["10.0.1.0/24"] 
}


 resource   "azurerm_public_ip"   "myvm1publicip"   { 
   name   =   "pip1" 
   location   =   "westus2" 
   resource_group_name   =   azurerm_resource_group.rg.name 
   allocation_method   =   "Dynamic" 
   sku   =   "Basic" 
 } 

 resource   "azurerm_network_interface"   "myvm1nic"   { 
   name   =   "myvm1-nic" 
   location   =   "westus2" 
   resource_group_name   =   azurerm_resource_group.rg.name 

   ip_configuration   { 
     name   =   "ipconfig1" 
     subnet_id   =   azurerm_subnet.frontendsubnet.id 
     private_ip_address_allocation   =   "Dynamic" 
     public_ip_address_id   =   azurerm_public_ip.myvm1publicip.id 
   } 
 } 
resource "azurerm_windows_virtual_machine" "example" {
  name                  = "myvm1"  
  location              = "westus2"
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.myvm1nic.id]
  size                  = var.vm_size
  admin_username        = "adminuser"
  admin_password        = "Password123!"

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}

*/