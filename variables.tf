variable "location" {
  description = "Azure Region"
  type        = string
}
# fghjk

variable "rg_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "public_key" {
  type = string
}

variable "identity_name" {
  type = string
}

variable "role_definition_name" {
  type = string
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)

  default = {
    Environment = "Development"
    Project     = "Azure-Terraform"
    Owner       = "Hariom"
    ManagedBy   = "Terraform"
  }
}

variable "storage_account_name" {
  type = string
}