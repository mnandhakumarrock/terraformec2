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