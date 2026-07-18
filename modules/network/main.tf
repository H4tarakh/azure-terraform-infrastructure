# -------------------------
# Virtual Network
# -------------------------
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-demo"
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = ["10.0.0.0/16"]
  tags                = var.tags
}

# -------------------------
# Subnet
# -------------------------
resource "azurerm_subnet" "subnet" {
  name                 = "subnet-demo"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# -------------------------
# Network Security Group
# -------------------------
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-demo"
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}

# -------------------------
# Allow SSH
# -------------------------
resource "azurerm_network_security_rule" "allow_ssh" {
  name                        = "Allow-SSH"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.rg_name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

# -------------------------
# Public IP
# -------------------------
resource "azurerm_public_ip" "pip" {
  name                = "pip-demo"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

# -------------------------
# Associate NSG with Subnet
# -------------------------
resource "azurerm_subnet_network_security_group_association" "assoc" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# -------------------------
# Network Interface
# -------------------------
resource "azurerm_network_interface" "nic" {
  name                = "nic-demo"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }

  depends_on = [
    azurerm_subnet_network_security_group_association.assoc
  ]
}
