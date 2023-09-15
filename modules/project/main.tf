provider "aws" {
  region =var.region
}
//vpc
module "vpc" {
  source                           = "../../resource/vpc"
  vpc_cidr_block                   = var.vpc_cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
}
//subnet
module "subnet" {
  source            = "../../resource/subnet"
  vpc_id            = module.vpc.vpc_id
  cidr_block        = "10.0.4.0/24"
}

 //ec2
module "ec2_Host" {
  source        = "../../resource/ec2_Host"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.subnet.subnet_id
 
}
