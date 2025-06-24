module "cicd" {
  source         = "../../"
  name_prefix    = "test"
  region         = "us-east-1"
  vpc_cidr_block = "192.168.0.0/16"

  public_subnets = {
    first_public_subnet = {
      availability_zone = "us-east-1a"
      cidr_block        = "192.168.0.0/19"
    }
    second_public_subnet = {
      availability_zone = "us-east-1b"
      cidr_block        = "192.168.32.0/19"
    }
    third_public_subnet = {
      availability_zone = "us-east-1c"
      cidr_block        = "192.168.64.0/19"
    }
    fourth_public_subnet = {
      availability_zone = "us-east-1d"
      cidr_block        = "192.168.96.0/19"
    }
  }

  private_subnets = {
    first_private_subnet = {
      availability_zone = "us-east-1a"
      cidr_block        = "192.168.128.0/19"
    }
    second_private_subnet = {
      availability_zone = "us-east-1b"
      cidr_block        = "192.168.160.0/19"
    }
    third_private_subnet = {
      availability_zone = "us-east-1c"
      cidr_block        = "192.168.192.0/19"
    }
    fourth_private_subnet = {
      availability_zone = "us-east-1d"
      cidr_block        = "192.168.224.0/19"
    }
  }
}
