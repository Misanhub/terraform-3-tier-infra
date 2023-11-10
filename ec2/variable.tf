variable "image_id" {
    type = string
    description = "(image ID of the instance)"
    default = "ami-05c13eab67c5d8861"
}

variable "instance_type" {
    type = string
    description = "(instance type)"
    default = "t2.micro"
}

variable "public_subnet_1" {
    type = string
    description = "(public subnet for the web server"
}

variable "vpc_id" {
    type = string
    description = "(VPC ID)"
}
 variable "vpc_cidr" {
    type = string
    description = "(VPC CIDR range)"
}

variable "tags" {
    type = map(string)
    description = "(optional) describe your variable"
}