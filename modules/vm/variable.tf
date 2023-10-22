variable "name" {
  type = string
  description = "name of the vm"
}
variable "prefix" {
  default = "tfvmex"
}
 variable "location" {
   type = string
   description = "location of the vm"
 }
 variable "vm_size" {
   type = string
   description = "size of the vm"
 }
 variable "resource_group_name" {
   type = string
   description = "RG name"
 }
variable "nic_id" {
  type = list(string)
}
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
