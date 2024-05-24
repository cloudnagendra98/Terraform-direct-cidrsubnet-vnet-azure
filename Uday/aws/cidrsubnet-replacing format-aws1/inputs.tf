variable "aws_vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is vpc cidr"

}


#nobody is using this format stuff so we also dont use lets put comments for below %g "aws_subnets_cidr_format" and then go to main.tf 

#variable "aws_subnets_cidr_format" {
# type = string

# default = "10.10.%g.0/24"

#}


#we are dealing with numbers here so we use %g here
#if we have to deal with string then we have to use %s. 99.99% times we use %s only. 
# Format function: format function produces a string by formatting a number of other values according to a specification string.
#its similar to the printf function in C, and other similar functions in other programming languages.

#we replaced variable "aws_subnets" below with "aws_subnets_cidr_format"
#variable "aws_subnets" {
#  type        = list(string)
# default     = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24", "10.10.4.0/24", "10.10.5.0/24"]
#  description = "These are subnet ids"

#}

variable "subnet_tags" {
  type        = list(string)
  default     = ["web1", "web2", "web3", "web4", "web5", "web6"]
  description = "These are subnet name tags"

}

#variable "subnet_count" {
#  type    = number
#  default = 6
#
#}

#variable "aws_subnet_ids" {
#   type = string
#    default = "10.10.0.0/24"
#}

