locals {
    sub_id = var.sub_id
    priv_ips = var.priv_ips
    ni_name = var.ni_name
    ami_id = var.ami_id
    inst_type = var.inst_type
    div_index = var.div_index
    namet = var.namet
}


resource "aws_network_interface" "gueban_ni" {
  subnet_id   = local.sub_id
 #aws_subnet.my_subnet.id
  private_ips = local.priv_ips

  tags = {
    Name = local.ni_name
  }
}

resource "aws_instance" "gueban_instance" {
  ami           = local.ami_id # us-west-2
  instance_type = local.inst_type

  network_interface {
    network_interface_id = aws_network_interface.gueban_ni.id
    device_index         = local.div_index
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = local.namet
  }
}