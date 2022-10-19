resource "aws_instance" "app_server" {
  ami           = var.ami_in
  instance_type = var.instance_type_in
  tags          = var.tags_in
}