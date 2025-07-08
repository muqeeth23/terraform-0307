terraform {
  backend "s3" {
    bucket = "my-bucket-1099"
    key    = "dev.tfstate"
    region = "us-east-1"
  }
}

module "dev" {
  source = "../modules/vpc_module"
  vpc_cidr = "10.0.0.0/16"
  vpctenancy = "default"
  vpc_name = "dev-vpc"

}


module "sn1" {
    source = "../modules/subnet_module"
    vpcid =   module.dev.vpc-id-op
    subnetcidr = "10.0.0.0/26"
    subnetname = "mysn1"
}

