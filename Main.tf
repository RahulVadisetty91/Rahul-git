provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

// EC2 Instance APP_Server Resource for Module
resource "aws_instance" "ec2_app_server" {
    ami = "${var.ami_id}"
	key_name = "test-rahul"
    count = "1"
    subnet_id = "${var.subnet_id_1}"
	vpc_security_group_ids = ["${aws_security_group.app.id}"]
    instance_type = "${var.instance_type}"
	tags {
	Name = "App Server 1"
	Owner = "Rahul"
	Environment = "Dev"
	Project = "HQR"	       
}
}
// EC2 Instance WEB_Server Resource for Module
resource "aws_instance" "ec2_web_server" {
    ami = "${var.ami_id}"
	key_name = "test-rahul"
    count = "1"
    subnet_id = "${var.subnet_id_2}"
    instance_type = "${var.instance_type}"
	tags {
	Name = "Web Server 1"
	Owner = "Rahul"
	Environment = "Dev"
	Project = "HQR"
	       
}
}
// EC2 Instance DB_Server Resource for Module
resource "aws_instance" "ec2_DB_server" {
    ami = "${var.ami_id}"
	key_name = "test-rahul"
    count = "1"
    subnet_id = "${var.subnet_id_3}"
	
    instance_type = "${var.instance_type}"
	tags {
	Name = "DB Server 1"
	Owner = "Rahul"
	Environment = "Dev"
	Project = "HQR"
	       
}
}
resource "aws_security_group" "app" {
	name = "App_SG"
		description = "Allow incoming HTTP connections."
		ingress {
		from_port = 80
			to_port = 80
			protocol = "tcp"
			cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = 22
			to_port = 22
			protocol = "tcp"
			cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port = 0
			to_port = 0
			protocol = "-1"
			cidr_blocks = ["0.0.0.0/0"]
	}

	vpc_id = "${var.vpc_id}"
}
