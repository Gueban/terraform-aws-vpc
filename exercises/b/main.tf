provider "aws" {
  region = "us-west-2"
}

module vpc {
  source = "../../modules/vpc"
  
  cidr_b = "172.16.0.0/16"
  vpc_name = "gueban-tf-vpc"
  sub_cidr = "172.16.10.0/24"
  sub_az = "us-west-2a"
  sub_name = "tf-example"

}

module ec2 {
  source = "../../modules/ec2"
  sub_id = module.vpc.subnet_id
  # not adding a value for priv_ips because default is ok.
}

