variable "aws_vpc_cidr" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is vpc cidr"

}

variable "aws_subnet_ids" {
    type = string
    default = "10.10.0.0/24"
  
}

