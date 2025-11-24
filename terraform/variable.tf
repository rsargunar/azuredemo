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
  default = ${{ secret.admin_password }}
}
