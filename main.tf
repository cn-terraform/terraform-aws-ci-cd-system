# ---------------------------------------------------------------------------------------------------------------------
# Privider
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
    profile = "${var.profile}"
    region  = "${var.region}"
}

# ---------------------------------------------------------------------------------------------------------------------
# Base Infrastructure
# ---------------------------------------------------------------------------------------------------------------------
module "networking" {
    source          = "jnonino/networking/aws"
    version         = "1.0.0"
    #source          = "../terraform-aws-networking"
    name_preffix    = "${var.name_preffix}"
    profile         = "${var.profile}"
    region          = "${var.region}"
    vpc_cidr_block  = "${var.vpc_cidr_block}"
    availability_zones                          = [ "${var.availability_zones}" ]
    public_subnets_cidrs_per_availability_zone  = [ "${var.public_subnets_cidrs_per_availability_zone}" ]
    private_subnets_cidrs_per_availability_zone = [ "${var.private_subnets_cidrs_per_availability_zone}" ]
}

# ---------------------------------------------------------------------------------------------------------------------
# Jenkins
# ---------------------------------------------------------------------------------------------------------------------
module "jenkins" {
    source              = "jnonino/jenkins/aws"
    version             = "1.0.0"
    #source              = "../terraform-aws-jenkins"
    name_preffix        = "${var.name_preffix}"
    profile             = "${var.profile}"
    region              = "${var.region}"
    vpc_id              = "${module.networking.vpc_id}"
    public_subnets_ids  = [ "${module.networking.public_subnets_ids}" ]
    private_subnets_ids = [ "${module.networking.private_subnets_ids}" ]
}

# ---------------------------------------------------------------------------------------------------------------------
# SonarQube
# ---------------------------------------------------------------------------------------------------------------------
module "sonar" {
    source              = "jnonino/sonarqube/aws"
    version             = "1.0.0"
    #source              = "../terraform-aws-sonarqube"
    name_preffix        = "${var.name_preffix}"
    profile             = "${var.profile}"
    region              = "${var.region}"
    vpc_id              = "${module.networking.vpc_id}"
    availability_zones  = [ "${var.availability_zones}" ]
    public_subnets_ids  = [ "${module.networking.public_subnets_ids}" ]
    private_subnets_ids = [ "${module.networking.private_subnets_ids}" ]
}
