provider "aws" {
  region = "eu-west-1"
}

##======================================================================
## Vpc Module call.
##======================================================================
module "vpc" {
  source     = "https://github.com/opszero/terraform-aws-subnet.git"
  name       = "test"
  cidr_block = "10.0.0.0/16"
}

##======================================================================
## Subnet Module call.
##======================================================================
module "subnet" {
  source             = "./../../"
  name               = "app"
  environment        = "test"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  vpc_id             = module.vpc.vpc_id
  cidr_block         = module.vpc.vpc_cidr_block
  type               = "database"
  enable_ipv6        = true
  ipv6_cidr_block    = module.vpc.ipv6_cidr_block
}
