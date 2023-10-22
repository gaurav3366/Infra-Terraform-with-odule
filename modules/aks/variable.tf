variable "prefix" {
  default = "tfvmex"
}
variable "name" {
 type = string
 description = "name of the aks cluster"
}
variable "dns_prefix" {
  type = string
  description = "dns_prefix name"
}
variable "location" {
  type = string
  description = "location name"
}
variable "resource_group_name" {
  type = string
  description = "name of the resource group"
}
variable "default_node_pool_name" {
  type = string
  description = "name of the default node pool"
}
variable "node_count" {
  type = number
  description = "number of the node count"
}
variable "vm_size" {
 type = string
  description = "size of the vm"
}
variable "tags_aks" {
  type = string
  description = "tags for the aks"
}
variable "identity" {
  type = string
  description = "identity"
}