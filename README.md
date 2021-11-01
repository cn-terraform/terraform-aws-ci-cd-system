# CI-CD system on AWS ECS Fargate

Test Continuous Integration/Delivery environment on AWS ECS.

[![](https://github.com/cn-terraform/terraform-aws-ci-cd-system/workflows/terraform/badge.svg)](https://github.com/cn-terraform/terraform-aws-ci-cd-system/actions?query=workflow%3Aterraform)
[![](https://img.shields.io/github/license/cn-terraform/terraform-aws-ci-cd-system)](https://github.com/cn-terraform/terraform-aws-ci-cd-system)
[![](https://img.shields.io/github/issues/cn-terraform/terraform-aws-ci-cd-system)](https://github.com/cn-terraform/terraform-aws-ci-cd-system)
[![](https://img.shields.io/github/issues-closed/cn-terraform/terraform-aws-ci-cd-system)](https://github.com/cn-terraform/terraform-aws-ci-cd-system)
[![](https://img.shields.io/github/languages/code-size/cn-terraform/terraform-aws-ci-cd-system)](https://github.com/cn-terraform/terraform-aws-ci-cd-system)
[![](https://img.shields.io/github/repo-size/cn-terraform/terraform-aws-ci-cd-system)](https://github.com/cn-terraform/terraform-aws-ci-cd-system)

## Tools included

* Jenkins
    - Source Code: <https://github.com/cn-terraform/terraform-aws-jenkins>
    - Terraform Module: <https://registry.terraform.io/modules/cn-terraform/jenkins/aws>
* SonarQube
    - Source Code: <https://github.com/cn-terraform/terraform-aws-sonarqube>
    - Terraform Module: <https://registry.terraform.io/modules/cn-terraform/sonarqube/aws>

## Use this code as a Terraform module

Check valid versions on:
* Github Releases: <https://github.com/cn-terraform/terraform-aws-ci-cd-system/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/cn-terraform/ci-cd-system/aws>

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

## Install pre commit hooks.

Pleas run this command right after cloning the repository.

        pre-commit install

For that you may need to install the folowwing tools:
* [Pre-commit](https://pre-commit.com/)
* [Terraform Docs](https://terraform-docs.io/)

In order to run all checks at any point run the following command:

        pre-commit run --all-files

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_jenkins"></a> [jenkins](#module\_jenkins) | cn-terraform/jenkins/aws | 2.0.13 |
| <a name="module_networking"></a> [networking](#module\_networking) | cn-terraform/networking/aws | 2.0.13 |
| <a name="module_nexus"></a> [nexus](#module\_nexus) | cn-terraform/nexus/aws | 1.0.11 |
| <a name="module_sonar"></a> [sonar](#module\_sonar) | cn-terraform/sonarqube/aws | 2.0.23 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones to be used by subnets | `list(any)` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Name prefix for resources on AWS | `any` | n/a | yes |
| <a name="input_private_subnets_cidrs_per_availability_zone"></a> [private\_subnets\_cidrs\_per\_availability\_zone](#input\_private\_subnets\_cidrs\_per\_availability\_zone) | List of CIDRs to use on each availability zone for private subnets | `list(any)` | n/a | yes |
| <a name="input_public_subnets_cidrs_per_availability_zone"></a> [public\_subnets\_cidrs\_per\_availability\_zone](#input\_public\_subnets\_cidrs\_per\_availability\_zone) | List of CIDRs to use on each availability zone for public subnets | `list(any)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region the infrastructure is hosted in | `any` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | AWS VPC CIDR Block | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_jenkins_master_alb_arn"></a> [jenkins\_master\_alb\_arn](#output\_jenkins\_master\_alb\_arn) | Jenkins Master Application Load Balancer ARN |
| <a name="output_jenkins_master_alb_arn_suffix"></a> [jenkins\_master\_alb\_arn\_suffix](#output\_jenkins\_master\_alb\_arn\_suffix) | Jenkins Master Application Load Balancer ARN Suffix |
| <a name="output_jenkins_master_alb_dns_name"></a> [jenkins\_master\_alb\_dns\_name](#output\_jenkins\_master\_alb\_dns\_name) | Jenkins Master Application Load Balancer DNS Name |
| <a name="output_jenkins_master_alb_id"></a> [jenkins\_master\_alb\_id](#output\_jenkins\_master\_alb\_id) | Jenkins Master Application Load Balancer ID |
| <a name="output_jenkins_master_alb_zone_id"></a> [jenkins\_master\_alb\_zone\_id](#output\_jenkins\_master\_alb\_zone\_id) | Jenkins Master Application Load Balancer Zone ID |
| <a name="output_nexus_lb_arn"></a> [nexus\_lb\_arn](#output\_nexus\_lb\_arn) | Nexus Load Balancer ARN |
| <a name="output_nexus_lb_arn_suffix"></a> [nexus\_lb\_arn\_suffix](#output\_nexus\_lb\_arn\_suffix) | Nexus Load Balancer ARN Suffix |
| <a name="output_nexus_lb_dns_name"></a> [nexus\_lb\_dns\_name](#output\_nexus\_lb\_dns\_name) | Nexus Load Balancer DNS Name |
| <a name="output_nexus_lb_id"></a> [nexus\_lb\_id](#output\_nexus\_lb\_id) | Nexus Load Balancer ID |
| <a name="output_nexus_lb_zone_id"></a> [nexus\_lb\_zone\_id](#output\_nexus\_lb\_zone\_id) | Nexus Load Balancer Zone ID |
| <a name="output_sonar_lb_arn"></a> [sonar\_lb\_arn](#output\_sonar\_lb\_arn) | SonarQube Load Balancer ARN |
| <a name="output_sonar_lb_arn_suffix"></a> [sonar\_lb\_arn\_suffix](#output\_sonar\_lb\_arn\_suffix) | SonarQube Load Balancer ARN Suffix |
| <a name="output_sonar_lb_dns_name"></a> [sonar\_lb\_dns\_name](#output\_sonar\_lb\_dns\_name) | SonarQube Load Balancer DNS Name |
| <a name="output_sonar_lb_id"></a> [sonar\_lb\_id](#output\_sonar\_lb\_id) | SonarQube Load Balancer ID |
| <a name="output_sonar_lb_zone_id"></a> [sonar\_lb\_zone\_id](#output\_sonar\_lb\_zone\_id) | SonarQube Load Balancer Zone ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
