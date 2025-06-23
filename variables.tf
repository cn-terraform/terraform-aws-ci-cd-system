#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_prefix" {
  description = "Name prefix for resources on AWS"
}

#------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
#------------------------------------------------------------------------------
variable "region" {
  description = "AWS Region the infrastructure is hosted in"
}

#------------------------------------------------------------------------------
# AWS Virtual Private Network
#------------------------------------------------------------------------------
variable "vpc_cidr_block" {
  description = "AWS VPC CIDR Block"
}

#------------------------------------------------------------------------------
# AWS Subnets
#------------------------------------------------------------------------------
variable "public_subnets" {
  type = map(object({
    availability_zone = string # Availability Zone for the subnet.
    cidr_block        = string # The IPv4 CIDR block for the subnet.
  }))
  description = "Map of objects contining the definition for each public subnet"
}

variable "private_subnets" {
  type = map(object({
    availability_zone = string # Availability Zone for the subnet.
    cidr_block        = string # The IPv4 CIDR block for the subnet.
  }))
  description = "Map of objects contining the definition for each private subnet"
}
