variable "region" {
  type        = string
  description = "Region to deploy AWS services"
}
variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}
variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  type        = bool
}
variable "assign_generated_ipv6_cidr_block" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
  type        = bool
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC."
  type        = string
}
variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  type        = bool
}
#### ec2 host#######
variable "ami" {
  type        = string
  description = " AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  default     = ""
}
variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = ""
}
