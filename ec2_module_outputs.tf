output "id" {
  description = "List of IDs of instances"
  value       = module.ec2-public-instance.id
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = module.ec2-public-instance.availability_zone
}

output "key_name" {
  description = "List of key names of instances"
  value       = module.ec2-public-instance.key_name
}

output "public_ip" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2-public-instance.public_ip
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = module.ec2-public-instance.public_dns
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = module.ec2-public-instance.security_groups
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = module.ec2-public-instance.vpc_security_group_ids
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = module.ec2-public-instance.subnet_id
}

output "instance_count" {
  description = "Number of instances to launch specified as argument to this module"
  value       = var.instance_count
}