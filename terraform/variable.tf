variable "resource_group_name" {
  default = "demo-rg"
}
variable "location" {
  default = "eastus"
}
variable "vm_name" {
  default = "demo-vm"
}
variable "admin_username" {
  default = "azureuser"
}
variable "admin_password" {
  type = string
}
variable "v-net" {
  default = "demo-vnet"
}
variable "sub-net" {
  default = "demo-subnet"
}
