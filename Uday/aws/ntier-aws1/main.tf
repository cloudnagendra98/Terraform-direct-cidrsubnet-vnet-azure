resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    Name = local.name
  }


}

resource "aws_subnet" "subnets" {
  count      = var.subnet_count
  vpc_id     = aws_vpc.ntier_vpc.id
  cidr_block = var.aws_subnets[count.index]
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