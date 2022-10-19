module "ec2" {
  source           = "./ec2"
  ami_in           = var.ami
  instance_type_in = var.instance_type
  tags_in = {
    Name = "ExampleAppServerInstance"
  }
}

module "security_group" {
  source         = "./security_group"
  web_sg_name_in = var.web_sg_name
  cidr_blocks_in = var.cidr_blocks
  port_in        = var.web_port
  protocol_in    = var.protocol
  tags_in = {
    Name = "web_security_group"
  }
}