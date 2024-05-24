resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    Name = local.name
  }


}

resource "aws_subnet" "subnets" {
  count      = length(var.subnet_tags)
  vpc_id     = aws_vpc.ntier_vpc.id
  cidr_block = format(var.aws_subnets_cidr_format, count.index)
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