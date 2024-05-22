variable "vpc_network_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is vpc network range"

}
variable "web_subnet" {
  type    = list(string)
  default = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24", "10.10.4.0/24", "10.10.5.0/24"]

}

variable "subnets_tags" {
  type    = list(string)
  default = ["web1", "web2", "web3", "web4", "web5", "web6"]

}
variable "subnet_count" {
  type    = number
  default = 6

}

#variable "app_subnet" {
# type = string
#default = "10.10.1.0/24"

#}
