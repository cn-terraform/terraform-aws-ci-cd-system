# CI-CD system on AWS ECS Fargate

Test Continuous Integration/Delivery environment on AWS ECS.

## Tools included

* Jenkins
    - Source Code: <https://github.com/jnonino/terraform-aws-jenkins>
    - Terraform Module: <https://registry.terraform.io/modules/jnonino/jenkins/aws>
* SonarQube
    - Source Code: <https://github.com/jnonino/terraform-aws-sonarqube>
    - Terraform Module: <https://registry.terraform.io/modules/jnonino/sonarqube/aws>

## Use this code as a Terraform module
    
    module "ci-cd" {
        source              = "jnonino/ci-cd-system/aws"
        version             = "1.0.0"
        name_preffix        = "${var.name_preffix}"
        profile             = "${var.profile}"
        region              = "${var.region}"
        availability_zones  = "${var.availability_zones}"
        vpc_cidr_block      = "${var.vpc_cidr_block}"
        public_subnets_cidrs_per_availability_zone  = [ "${var.public_subnets_cidrs_per_availability_zone}" ]
        private_subnets_cidrs_per_availability_zone = [ "${var.private_subnets_cidrs_per_availability_zone}" ]
    }

## Deploy CI/CD Infrastructure standalone

1. Clone this repository.

2. To download required plugins and modules run:

        terraform init

3. To update dependencies run:

        terraform get --update

4. To plan a deployment and check what is going to change run:

        terraform plan

5. To deploy changes run:

        terraform apply
