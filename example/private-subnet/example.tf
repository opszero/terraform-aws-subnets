provider "aws" {
  region = "eu-west-1"
}

##===========================================================================
## Vpc Module call.
##===========================================================================
module "vpc" {
  source     = "git@github.com:opszero/terraform-aws-vpc?ref=v1.0.0"
  name       = "test"
  cidr_block = "10.0.0.0/16"
}

##===========================================================================
## Subnet Module call.
##===========================================================================
module "private-subnets" {
  source              = "./../../"
  name                = "app"
  environment         = "test"
  nat_gateway_enabled = true
  availability_zones  = ["eu-west-1a"]
  vpc_id              = module.vpc.vpc_id
  type                = "private"
  cidr_block          = module.vpc.vpc_cidr_block
  ipv6_cidr_block     = module.vpc.ipv6_cidr_block
  ipv4_private_cidrs  = ["10.0.3.0/24"]
  public_subnet_ids   = ["subnet-01ef5b61799cc9943", "subnet-0542749d02b264baa"]
  enable_ipv6         = false
}
