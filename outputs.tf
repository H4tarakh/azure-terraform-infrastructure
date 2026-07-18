output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_location" {
  value = module.resource_group.location
}

output "identity_principal_id" {
  value = module.identity.principal_id
}
output "role_assignment_id" {
  value = module.rbac.role_assignment_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}