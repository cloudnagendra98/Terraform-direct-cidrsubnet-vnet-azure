resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    Name = local.name
  }


}

resource "aws_subnet" "subnets" {
  count  = length(var.subnet_tags)
  vpc_id = aws_vpc.ntier_vpc.id
  #once we came here we remove this cidr_block here we dont need that now as we no longer dont use format function anymore we use cidrsubnetfunction
  #cidr_block = format(var.aws_subnets_cidr_format, count.index). so below in cidrsubnet we need vpc cidr range so go to inputs.tf and get it to use below
  #cidrsubnet(prefix which is of our vpc network, and then addnewbits, netnum)
  cidr_block = cidrsubnet(var.aws_vpc_cidr, 8, count.index)
  tags = {
    Name = var.subnet_tags[count.index]
  }
  depends_on = [
    aws_vpc.ntier_vpc
  ]
}


#resource "aws_subnet" "subnets" {
#   vpc_id = aws_vpc.ntier_vpc.id
#  cidr_block = var.aws_subnet_ids
#  depends_on = [ 
#  aws_vpc.ntier_vpc
# ]
# }