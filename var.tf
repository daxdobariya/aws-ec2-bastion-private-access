variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "az1" {
  default = "ap-south-1a"
}

variable "ami_id" {
  description = "Ubuntu AMI"
  default     = "ami-0a716d3f3b16d290c" # Example: ap-south-1 Ubuntu
}



variable "key_name" {
  default = "new_terraformkey"
}



variable "my_ip" {
  description = "Your local public IP with /32"
  default = "0.0.0.0/0"
}
