

variable "instance_type" {
default = "t2.micro"
}

variable "vpc_id" {
  description = "The VPC subnet the instance(s) will go in"
  default = "vpc-01e3be67"
}

variable "subnet_id_1" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-e78e19eb"
}

variable "subnet_id_2" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-e78e19eb"
}
variable "subnet_id_3" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-1a0e6226"
}

variable "ami_id" {
  description = "The AMI to use"
   default = "ami-c998b6b2" 
}


// Variables for providers used in this modul
variable "aws_access_key" {
default = "AKIAJN6J62AXY7LOV6SA"
}
variable "aws_secret_key" {
default = "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"
}
variable "aws_region" {
default = "us-east-1"
}

