variable "address_prefixes" {
  type = list(string)
  description = "address-prefixes"
}
variable "prefix" {
  default = "tfvmex"
}
variable "name" {
  type = string
  description = "name of the subnet"
}
variable "resource_group_name" {
  type = string
  description = "name of the rg"
}
variable "vnet-name" {
  type        = string
  description = "name of the vnet"
}