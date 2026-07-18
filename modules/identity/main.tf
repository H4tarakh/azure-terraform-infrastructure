resource "azurerm_user_assigned_identity" "identity" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.tags
}