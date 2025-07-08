module "qavpc" {
  source = "../modules/vpc_module"
  vpc_cidr = "10.0.4.0/22"
  vpctenancy = "default"
  vpc_name = "qa-vpc"
}