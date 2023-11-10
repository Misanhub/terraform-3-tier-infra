variable "private_subnet_1" {
    type = string
    description = "(ID of subnet "
}

variable "private_subnet_2" {
    type = string
    description = "(ID of subnet "
}

variable "tags" {
    type = map (string)
    description = "(tags)"
}

variable "vpc_id" {
    type = string
    description = "(ID of the VPC)"
}

variable "vpc_cidr" {
    type = string
    description = "(CIDR of the VPC)"
}