resource "aws_instance" "app_server" {
  ami           = var.ami_in
  instance_type = var.instance_type_in
  tags          = var.tags_in
  security_groups = [var.sg_id_in]
  associate_public_ip_address = true
  user_data     = file("bootstrap.sh")
}