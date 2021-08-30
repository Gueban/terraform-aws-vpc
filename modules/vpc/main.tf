locals {
  cidr_b = var.cidr_b
  vpc_name = var.vpc_name
  sub_cidr = var.sub_cidr
  sub_az = var.sub_az
  sub_name = var.sub_name
}


resource "aws_vpc" "gueban_vpc" {
  cidr_block = local.cidr_b

  tags = {
    Name = local.vpc_name
  }
}

resource "aws_subnet" "gueban_tfsubnet" {
  vpc_id            = aws_vpc.gueban_vpc.id
  cidr_block        = local.sub_cidr
  availability_zone = local.sub_az

  tags = {
    Name = local.sub_name
  }
}