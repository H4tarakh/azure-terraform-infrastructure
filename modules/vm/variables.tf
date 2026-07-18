variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "nic_id" {
  type = string
}

variable "vm_name" {
  type = string
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

variable "tags" {
  type = map(string)
}
