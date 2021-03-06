module "ec2-public-instance" {
  source         = "terraform-aws-modules/ec2-instance/aws"
  version        = "2.19.0"
  name           = "${var.environment}-amzlinux2-ec2"
  instance_count = 1

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_sg.security_group_id]
}
