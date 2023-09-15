variable "vpc_id" {
    type = string
    description = "Id of the VPC"  
}
variable "cidr_block" {
   type = string
   description = "IP address range for subnet"
}