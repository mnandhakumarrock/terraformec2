resource "aws_security_group" "allow_web_traffic" {
  name        = var.web_sg_name_in
  description = "Allow inbound web traffic"

  ingress {
    description = "Allow HTTP web traffic"
    from_port   = var.port_in
    to_port     = var.port_in
    protocol    = var.protocol_in
    cidr_blocks = var.cidr_blocks_in
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.tags_in
}

# resource "aws_network_interface_sg_attachment" "web_sg_attachment" {
#   security_group_id    = module.security_group.sg_id
#   network_interface_id = var.network_interface_id_in
# }