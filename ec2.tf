module "ec2" {
  source           = "./ec2"
  ami_in           = "ami-830c94e3"
  instance_type_in = "t2.micro"

  tags_in = {
    Name = "ExampleAppServerInstance"
  }
}
