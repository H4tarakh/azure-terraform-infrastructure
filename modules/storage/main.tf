resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version             = "TLS1_2"
  https_traffic_only_enabled  = true

  tags = var.tags
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}