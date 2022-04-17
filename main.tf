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
  size                  = "Standard_B1s"
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
