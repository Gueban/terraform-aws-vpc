variable sub_id {
  type        = string
  default     = null
  description = "subnet id"
}

variable priv_ips {
  type        = list(string)
  default     = ["172.16.10.100"]
  description = "private ip list"
}

variable ni_name {
  type        = string
  default     = "primary_network_interface"
  description = "network interface name"
}

variable ami_id {
  type        = string
  default     = "ami-083ac7c7ecf9bb9b0"
  description = "ami id"
}

variable inst_type {
  type        = string
  default     = "t2.micro"
  description = "instance type"
}

variable div_index {
  type        = number
  default     = 0
  description = "device index"
}

variable namet {
  type        = string
  default     = "gueban-tf"
  description = "ec2 name tag"
}



