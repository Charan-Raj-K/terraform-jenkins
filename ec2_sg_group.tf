# AWS EC2 Security Group Terraform Module
# Security Group for EC2 Instances
module "public_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.2.0"

  name                = "public_sg"
  description         = "Security group with HTTP & SSH ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  egress_rules        = ["all-all"]

}