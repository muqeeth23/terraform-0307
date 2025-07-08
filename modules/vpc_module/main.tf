resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.vpctenancy
  tags = {
    Name    = var.vpc_name
  }
}