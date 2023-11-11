module "vpc" {
  source = "./vpc"
  tags   = local.project-tags

}

module "rds" {
  source = "./rds"
  tags = local.project-tags
  private_subnet_1 = module.vpc.private_subnet_1_id
  private_subnet_2 = module.vpc.private_subnet_2_id
  vpc_id = module.vpc.vpc_id
  vpc_cidr = "10.0.0.0/16"
}

module "ec2" {
  source = "./ec2"
  public_subnet_1 = module.vpc.public_subnet_1_id
  vpc_id = module.vpc.vpc_id
  vpc_cidr = "10.0.0.0/16"
  tags = local.project-tags
}

