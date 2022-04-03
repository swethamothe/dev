variable "region" {
	type = string
}

variable "ami" {
	type = string
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}

variable "vpc" {
    type = string
}

variable "subnet" {
    type = string
}
