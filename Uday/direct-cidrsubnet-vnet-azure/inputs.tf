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
  type        = string
  default     = "10.10.0.0/16"
  description = "This is azure virtual network range"

}


#we dont need this address prefix variable which is here variable "azure_subnets_range" so put it in comments
#write new variable here 

#variable "azure_subnets_range" {
#  type        = list(string)
#  default     = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
#  description = "These are subnet ranges"
#}

variable "subnets_names" {
  type        = list(string)
  default     = ["web", "app", "db"]
  description = "These are subnets names"
}

#variable "subnets_count" {
#  type        = number
#  default     = 3
#  description = "This is subnets count"

#}


#variable "azure_subnet_range" {
#   type = list(string)
#   default = [ "10.10.0.0/24" ]
#   description = "This is web subnet range"
# 
#}