#------------------------------------------------------------------------------
# Jenkins
#------------------------------------------------------------------------------
output "jenkins_master_alb_id" {
  description = "Jenkins Master Application Load Balancer ID"
  value       = module.jenkins.jenkins_master_alb_id
}

output "jenkins_master_alb_arn" {
  description = "Jenkins Master Application Load Balancer ARN"
  value       = module.jenkins.jenkins_master_alb_arn
}

output "jenkins_master_alb_arn_suffix" {
  description = "Jenkins Master Application Load Balancer ARN Suffix"
  value       = module.jenkins.jenkins_master_alb_arn_suffix
}

output "jenkins_master_alb_dns_name" {
  description = "Jenkins Master Application Load Balancer DNS Name"
  value       = module.jenkins.jenkins_master_alb_dns_name
}

output "jenkins_master_alb_zone_id" {
  description = "Jenkins Master Application Load Balancer Zone ID"
  value       = module.jenkins.jenkins_master_alb_zone_id
}

#------------------------------------------------------------------------------
# SonarQube ALB DNS
#------------------------------------------------------------------------------
output "sonar_lb_id" {
  description = "SonarQube Load Balancer ID"
  value       = module.sonar.sonar_lb_id
}

output "sonar_lb_arn" {
  description = "SonarQube Load Balancer ARN"
  value       = module.sonar.sonar_lb_arn
}

output "sonar_lb_arn_suffix" {
  description = "SonarQube Load Balancer ARN Suffix"
  value       = module.sonar.sonar_lb_arn_suffix
}

output "sonar_lb_dns_name" {
  description = "SonarQube Load Balancer DNS Name"
  value       = module.sonar.sonar_lb_dns_name
}

output "sonar_lb_zone_id" {
  description = "SonarQube Load Balancer Zone ID"
  value       = module.sonar.sonar_lb_zone_id
}

#------------------------------------------------------------------------------
# Nexus ALB DNS
#------------------------------------------------------------------------------
output "nexus_lb_id" {
  description = "Nexus Load Balancer ID"
  value       = module.nexus.nexus_lb_id
}

output "nexus_lb_arn" {
  description = "Nexus Load Balancer ARN"
  value       = module.nexus.nexus_lb_arn
}

output "nexus_lb_arn_suffix" {
  description = "Nexus Load Balancer ARN Suffix"
  value       = module.nexus.nexus_lb_arn_suffix
}

output "nexus_lb_dns_name" {
  description = "Nexus Load Balancer DNS Name"
  value       = module.nexus.nexus_lb_dns_name
}

output "nexus_lb_zone_id" {
  description = "Nexus Load Balancer Zone ID"
  value       = module.nexus.nexus_lb_zone_id
}
