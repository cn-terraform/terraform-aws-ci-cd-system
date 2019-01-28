# CI-CD system on AWS ECS Fargate

Test Continuous Integration/Delivery environment on AWS ECS Fargate.

## Deploy CI/CD Infrastructure using this as a root

TO download required plugins and modules run:

    terraform init

To update dependencies run:

    terraform get -update

To plan a deployment and check what is going to change run:

    terraform plan

To deploy changes run:

    terraform apply

## Use this code as a Terraform module

    module "ci-cd" {
	    source = "jnonino/ci-cd-system/aws"

        name_preffix        = "${var.name_preffix}"
        profile             = "${var.profile}"
        region              = "${var.region}"
        availability_zones  = "${var.availability_zones}"
        vpc_cidr_block      = "${var.vpc_cidr_block}"
        public_subnets_cidrs_per_availability_zone  = [ "${var.public_subnets_cidrs_per_availability_zone}" ]
        private_subnets_cidrs_per_availability_zone = [ "${var.private_subnets_cidrs_per_availability_zone}" ]
    }
