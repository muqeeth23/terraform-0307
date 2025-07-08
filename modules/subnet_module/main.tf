resource "aws_subnet" "mysubnet" {
    vpc_id = var.vpcid
  cidr_block = var.subnetcidr
  tags = {
    Name = var.subnetname
}
}

