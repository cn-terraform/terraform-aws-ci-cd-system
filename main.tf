#------------------------------------------------------------------------------
# Base Infrastructure
#------------------------------------------------------------------------------
module "networking" {
  source  = "cn-terraform/networking/aws"
  version = "2.0.15"
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
  version = "2.0.27"
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
  version = "2.0.43"
  # source = "../terraform-aws-sonarqube"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = module.networking.public_subnets_ids
  private_subnets_ids = module.networking.private_subnets_ids
  enable_ssl          = false
  lb_https_ports      = {}
  lb_http_ports = {
    default = {
      listener_port         = 80
      target_group_port     = 9000
      target_group_protocol = "HTTP"
    }
  }
}

#------------------------------------------------------------------------------
# Nexus
#------------------------------------------------------------------------------
module "nexus" {
  source  = "cn-terraform/nexus/aws"
  version = "2.0.0"
  # source = "../terraform-aws-nexus"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = module.networking.public_subnets_ids
  private_subnets_ids = module.networking.private_subnets_ids
}
