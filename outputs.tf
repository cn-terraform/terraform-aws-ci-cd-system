# ---------------------------------------------------------------------------------------------------------------------
# Jenkins
# ---------------------------------------------------------------------------------------------------------------------
output "jenkins_master_alb_id" {
    description = "Jenkins Master Application Load Balancer ID"
    value = "${module.jenkins.jenkins_master_alb_id}"
}
output "jenkins_master_alb_arn" {
    description = "Jenkins Master Application Load Balancer ARN"
    value = "${module.jenkins.jenkins_master_alb_arn}"
}
output "jenkins_master_alb_arn_suffix" {
    description = "Jenkins Master Application Load Balancer ARN Suffix"
    value = "${module.jenkins.jenkins_master_alb_arn_suffix}"
}
output "jenkins_master_alb_dns_name" {
    description = "Jenkins Master Application Load Balancer DNS Name"
    value = "${module.jenkins.jenkins_master_alb_dns_name}"
}
output "jenkins_master_alb_zone_id" {
    description = "Jenkins Master Application Load Balancer Zone ID"
    value = "${module.jenkins.jenkins_master_alb_zone_id}"
}

# ---------------------------------------------------------------------------------------------------------------------
# SonarQube ALB DNS
# ---------------------------------------------------------------------------------------------------------------------
output "sonar_alb_id" {
  description = "SonarQube Application Load Balancer ID"
  value = "${module.sonar.sonar_alb_id}"
}
output "sonar_alb_arn" {
  description = "SonarQube Application Load Balancer ARN"
  value = "${module.sonar.sonar_alb_arn}"
}
output "sonar_alb_arn_suffix" {
  description = "SonarQube Application Load Balancer ARN Suffix"
  value = "${module.sonar.sonar_alb_arn_suffix}"
}
output "sonar_alb_dns_name" {
  description = "SonarQube Application Load Balancer DNS Name"
  value = "${module.sonar.sonar_alb_dns_name}"
}
output "sonar_alb_zone_id" {
  description = "SonarQube Application Load Balancer Zone ID"
  value = "${module.sonar.sonar_alb_zone_id}"
}
