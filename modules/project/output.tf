output "id" {
  value       = module.vpc.id
  description = "The vpc has been created"
}
output "subnet_id" {
  value = module.subnet.subnet_id
}
output "ec2_Host" {
  value = module.ec2_Host.id
}