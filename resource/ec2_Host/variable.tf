variable "ami" {
  type        = string
  description = "ID of AMI to use for the instance"
}
variable "instance_type" {
  type        = string
  description = "The type of instance to start"
}
variable "subnet_id" {
  type        = string
  description = "The VPC Subnet ID to launch in"
}