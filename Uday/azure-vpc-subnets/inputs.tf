variable "resource_group_name" {
  type        = string
  default     = "newresourcegroup"
  description = "This is my resourcegroup"

}

variable "resourcegroup_location" {
  type        = string
  default     = "eastus"
  description = "This is resourcegroup location"

}

variable "azure_network_range" {
  type    = list(string)
  default = ["10.10.0.0/16"]

}

variable "azure_subnet_range" {
    type = list(string)
    default = [ "10.10.0.0/24" ]
    description = "This is web subnet range"
  
}