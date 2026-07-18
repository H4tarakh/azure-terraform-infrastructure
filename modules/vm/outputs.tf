output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "principal_id" {
  value = azurerm_linux_virtual_machine.vm.identity[0].principal_id
}