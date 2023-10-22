variable "prefix" {
  default = "tfvmex"
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "subnet_id" {
 type = string
}
variable "name" {
  type = string
  description = "name of the nic"
}