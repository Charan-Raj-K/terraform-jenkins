variable "vpc_name" {
  type        = string
  description = "VPC Name"
  default     = "myvpc"
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  type        = list(string)
  description = "VPC AVAILABILITY ZONE"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_private_subnets" {
  type        = list(string)
  description = "vpc private subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  type        = list(string)
  description = "vpc public subnets"
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_create_database_subnet_group" {
  type        = bool
  description = "VPC Create Database Subnet Group"
  default     = true
}

variable "vpc_create_database_subnet_route_table" {
  type        = bool
  description = "VPC Create Database Subnet Route Table"
  default     = true
}

variable "vpc_database_subnets" {
  type        = list(string)
  description = "vpc database subnets"
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "vpc_enable_nat_gateway" {
  type        = bool
  description = "vpc enable nat gateway"
  default     = true
}

variable "vpc_single_nat_gateway" {
  type        = bool
  description = "vpc single nat gateway"
  default     = true
}

variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = "vpc enable dns hostnames"
  default     = true
}

variable "vpc_enable_dns_support" {
  type        = bool
  description = "vpc enable dns support"
  default     = true
}