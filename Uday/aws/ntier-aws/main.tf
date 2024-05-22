resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.vpc_network_cidr
  tags = {
    Name = local.name
  }
}
resource "aws_subnet" "web" {
  count      = var.subnet_count
  vpc_id     = aws_vpc.ntier_vpc.id
  cidr_block = var.web_subnet[count.index]
  tags = {

    Name = var.subnets_tags[count.index]
  }
  depends_on = [
    aws_vpc.ntier_vpc
  ]
}

#resource "aws_subnet" "web" {
# vpc_id     = aws_vpc.ntier_vpc.id
#cidr_block = var.web_subnet
#tags = {

# Name = "udayweb"
#}
#depends_on = [
# aws_vpc.ntier_vpc
#]
#}

#resource "aws_subnet" "app" {
# vpc_id = aws_vpc.ntier_vpc.id
#cidr_block = var.app_subnet
#tags = {
# Name = "udayapp"
#}
#depends_on = [ 
# aws_vpc.ntier_vpc 
#]
#}

#resource "aws_subnet" "web" {
# vpc_id     = aws_vpc.ntier_vpc.id
# cidr_block = "10.10.0.0/24"
# tags = {

#  Name = "udayweb"
# }
# depends_on = [
#   aws_vpc.ntier_vpc
# ]
#}