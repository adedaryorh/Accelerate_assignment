variable "prefix" {
	description = "The prefix which should be used for all resources in the web server exercise"
	default = "WebServerEx"
}

variable "location" {
	description = "The Azure Region in which all resources in this example should be created."
	default = "westeurope"
}

variable "username" {
	type = string
	default = "adedaryorh"
}

variable "password" {
	type = string
	default = "Olatejumi9621"
}

variable "packer_image_rg" {
	description = "Resource group where the packer image lives"
	default = "cloud-shell-storage-westeurope"
}

variable "packer_image" {
	description = "Image created with packer"
	default = "mypacker_image"
}

variable "number_vms" {
	description = "Number of virtual machines to create"
	default = 2
}
