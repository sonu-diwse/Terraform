resource "aws_vpc" "main" {
  #checkov:skip=CKV2_AWS_12:Ensure the default security group of every VPC restricts all traffic
  #checkov:skip=CKV2_AWS_11:Ensure VPC flow logging is enabled in all VPCs

  cidr_block                       = var.vpc_cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
}


