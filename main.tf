#------------------------------------------------------------------------------
# Base Infrastructure
#------------------------------------------------------------------------------
module "networking" {
  source  = "cn-terraform/networking/aws"
  version = "2.0.14"
  #source = "../terraform-aws-networking"

  name_prefix                                 = var.name_prefix
  vpc_cidr_block                              = var.vpc_cidr_block
  availability_zones                          = var.availability_zones
  public_subnets_cidrs_per_availability_zone  = var.public_subnets_cidrs_per_availability_zone
  private_subnets_cidrs_per_availability_zone = var.private_subnets_cidrs_per_availability_zone
}

#------------------------------------------------------------------------------
# Jenkins
#------------------------------------------------------------------------------
module "jenkins" {
  source  = "cn-terraform/jenkins/aws"
  version = "2.0.17"
  # source = "../terraform-aws-jenkins"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = module.networking.public_subnets_ids
  private_subnets_ids = module.networking.private_subnets_ids
}

#------------------------------------------------------------------------------
# SonarQube
#------------------------------------------------------------------------------
module "sonar" {
  source  = "cn-terraform/sonarqube/aws"
  version = "2.0.28"
  # source = "../terraform-aws-sonarqube"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  availability_zones  = module.networking.availability_zones
  public_subnets_ids  = module.networking.public_subnets_ids
  private_subnets_ids = module.networking.private_subnets_ids
}

#------------------------------------------------------------------------------
# Nexus
#------------------------------------------------------------------------------
module "nexus" {
  source  = "cn-terraform/nexus/aws"
  version = "1.0.15"
  # source = "../terraform-aws-nexus"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  availability_zones  = module.networking.availability_zones
  public_subnets_ids  = module.networking.public_subnets_ids
  private_subnets_ids = module.networking.private_subnets_ids
}
