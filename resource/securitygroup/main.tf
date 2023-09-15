data "aws_vpc" "example" {
  id = var.vpc_id
}
resource "aws_security_group" "main" {
  name   = var.security_group_name
  vpc_id = data.aws_vpc.example.id
  dynamic "ingress" {
    for_each = var.ingress_sg_ports
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  dynamic "egress" {
    for_each = var.egress_sg_ports
    content {
      from_port   = egress.value.port
      to_port     = egress.value.port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
  tags = var.tags
}