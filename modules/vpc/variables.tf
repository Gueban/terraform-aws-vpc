variable cidr_b {
  type        = string
  default     = "172.16.0.0/16"
  description = "cidr block for vpc"
}

variable vpc_name {
  type        = string
  default     = "gueban-tf-vpc"
  description = "vpc name for tag Name"
}

variable sub_cidr {
  type        = string
  default     = "172.16.10.0/24"
  description = "subnet 1 cidr block"
}

variable sub_az {
  type        = string
  default     = "us-west-2a"
  description = "subnet 1 availability zone"
}

variable sub_name {
  type        = string
  default     = "tf-example"
  description = "subnet 1 name tag"
}

