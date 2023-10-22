variable "rgname" {
  type        = string
  description = "resource group name"
}
variable "rglocation" {
  type        = string
  description = "resource group location"
}
variable "vnet-name" {
  type        = string
  description = "name of the vnet"
}
variable "address_space" {
  type        = list(string)
  description = "address space"
}
variable "vm-name" {
  type        = string
  description = "name of the vm"
}
variable "vm_size" {
  type        = string
  description = "size of the vm"
}
variable "address_prefixes" {
  type        = list(string)
  description = "address-prefixes"
}
variable "prefix" {
  default = "tfvmex"
}
/* variable "nic_id" {
  type = list(string)
} */
variable "publisher" {
  type = string
}
variable "offer" {
  type = string
}
variable "sku" {
  type = string
}
variable "os_disk_name" {
  type = string
}
variable "caching" {
  type = string
}
variable "node_count" {
  type        = number
  description = "number of the node count"
}
variable "aks_vm_size" {
  type        = string
  description = "size of the vm"
}
variable "tags_aks" {
  type        = string
  description = "tags for the aks"
}
variable "identity" {
  type        = string
  description = "identity"
}
