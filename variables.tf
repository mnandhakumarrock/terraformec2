variable "ami" {
  type        = string
  description = "The AMI"
  default     = "ami-830c94e3"
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type"
  default     = "t2.micro"
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
  default     = {}
}