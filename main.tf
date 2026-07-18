
module "resource_group" {
  source = "./modules/resource_group"

  rg_name  = var.rg_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source = "./modules/network"

  rg_name  = module.resource_group.name
  location = module.resource_group.location
  tags     = var.tags
}

module "vm" {
  source = "./modules/vm"

  rg_name  = module.resource_group.name
  location = module.resource_group.location
  nic_id   = module.network.nic_id

  vm_name        = "demo-vm"
  vm_size        = var.vm_size
  admin_username = var.admin_username
  public_key     = var.public_key
  tags           = var.tags
}

module "identity" {
  source = "./modules/identity"

  rg_name       = module.resource_group.name
  location      = module.resource_group.location
  identity_name = var.identity_name
  tags          = var.tags
}

module "rbac" {
  source = "./modules/rbac"

  scope                = module.resource_group.id
  principal_id         = module.identity.principal_id
  role_definition_name = var.role_definition_name

  depends_on = [
    module.identity
  ]
}

module "storage" {
  source = "./modules/storage"

  rg_name              = module.resource_group.name
  location             = module.resource_group.location
  storage_account_name = var.storage_account_name
  tags                 = var.tags
}