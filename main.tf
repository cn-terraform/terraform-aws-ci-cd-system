#------------------------------------------------------------------------------
# Base Infrastructure
#------------------------------------------------------------------------------
module "networking" {
  source  = "cn-terraform/networking/aws"
  version = "3.0.1"
  #source = "../terraform-aws-networking"

  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

#------------------------------------------------------------------------------
# Jenkins
#------------------------------------------------------------------------------
module "jenkins" {
  source  = "cn-terraform/jenkins/aws"
  version = "2.0.41"
  # source = "../terraform-aws-jenkins"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = [for subnet in module.networking.public_subnets : subnet.id]
  private_subnets_ids = [for subnet in module.networking.private_subnets : subnet.id]
}

#------------------------------------------------------------------------------
# SonarQube
#------------------------------------------------------------------------------
module "sonar" {
  source  = "cn-terraform/sonarqube/aws"
  version = "2.0.62"
  # source = "../terraform-aws-sonarqube"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = [for subnet in module.networking.public_subnets : subnet.id]
  private_subnets_ids = [for subnet in module.networking.private_subnets : subnet.id]
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
  version = "2.0.14"
  # source = "../terraform-aws-nexus"

  name_prefix         = var.name_prefix
  region              = var.region
  vpc_id              = module.networking.vpc_id
  public_subnets_ids  = [for subnet in module.networking.public_subnets : subnet.id]
  private_subnets_ids = [for subnet in module.networking.private_subnets : subnet.id]
}
