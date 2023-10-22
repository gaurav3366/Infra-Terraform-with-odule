variable "name" {
  type = string
  description = "name of the vnet"
}
variable "resource_group_name" {
  type = string
  description = "name of the RG"
}
variable "prefix" {
  default = "tfvmex"
}
variable "location" {
  type = string
  description = "location of the vnet"
}
variable "address_space" {
  type = list(string)
  description = "address space"
}
