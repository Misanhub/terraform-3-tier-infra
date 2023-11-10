variable "vpc_cidr" {
    type = string
    description = "vpc cidr range"
    default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
    type = string
    description = "cidr block for public subnet 1"
    default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr_block" {
    type = string
    description = "cidr block for public subnet 2"
    default = "10.0.2.0/24"
}

variable "private_subnet_1_cidr_block" {
    type = string
    description = "cidr block for private subnet 1"
    default = "10.0.3.0/24"
}

variable "private_subnet_2_cidr_block" {
    type = string
    description = "cidr block for private subnet 2"
    default = "10.0.4.0/24"
}

variable "availability_zones" {
    type = list(string)
    description = "availability zone for subnets"
    default = ["us-east-1a", "us-east-1b"]
}

variable "tags" {
    type = map
    description = "tags"
  
}