output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "public_ip_id" {
  value = azurerm_public_ip.pip.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}