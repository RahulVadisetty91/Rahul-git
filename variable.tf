variable "instance_name" {
  description = "Used to populate the Name tag. This is done in main.tf"
}

variable "instance_type" {
default = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will go in"
  default = "subnet-475bc81d"
}

variable "ami_id" {
  description = "The AMI to use"
   default = "ami-8c1be5f6"
}

variable "number_of_instances" {
  description = "number of instances to make"
  default = 1
}



variable "tags" {
  default = {
    created_by = "terraform"
 }
}

// Variables for providers used in this module
variable "aws_access_key" {
default = "AKIAJ55ESYAH4XSD7TRQ"
}
variable "aws_secret_key" {
default = "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"
}
variable "aws_region" {
default = "us-east-1"
}

