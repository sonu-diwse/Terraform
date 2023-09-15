variable "security_group_name" {
  type        = string
  description = "name of the security group"
}
variable "vpc_id" {
  type        = string
  description = " The id of the specific VPC to retrieve"
}
variable "ingress_sg_ports" {
  type = map(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = {
    "80" = {
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    "22" = {
      port        = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
variable "egress_sg_ports" {
  type = map(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = {
    "0" = {
      port        = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
variable "tags" {
  type        = map(any)
  description = "A list of tags to be applied"
  default     = { "Name" = "asgcloud" }
}