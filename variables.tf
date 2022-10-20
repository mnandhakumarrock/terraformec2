variable "ami" {
  type        = string
  description = "The AMI"
  default     = "ami-0d593311db5abb72b"
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

variable "web_sg_name" {
  type        = string
  description = "The web security group name"
  default     = "allow_web_traffic_sg"
}

variable "web_port" {
  type        = number
  description = "The HTTP port"
  default     = 80
}

variable "protocol" {
  type        = string
  description = "The layer 4 protocol"
  default     = "tcp"
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}