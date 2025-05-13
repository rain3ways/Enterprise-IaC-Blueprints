variable "aws_region" {
    description = "AWS region to deploy resources"
    type = string
    default = "ap-souteast-1"
}

variable "project_name" {
    description = "A name for the project to prefix resources"
    type = string
    default = "enterprise=app"
}

variable "environment" {
    description = "Deployment environment (e.g., dev, staging, prod)"
    type = string
    default = "dev"
}

variabe "vpc_cidr_block" {
    description = "CIDR block for VPC"
    type = string
    default = "10.0.0.0/16"
}

variable "availability_zone" {
    description = "List of Availability Zone to use"
    type = list(string)
    default = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "public_subnet_cidrs" {
    description = "List of CIDR blocks for public subnets (1 per AZ)"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_app_subnet_cidrs" {
    description = "List of CIDR blocks for private application subnets (1 per AZ)"
    type = list(string)
    default = ["10.0.10.0/24", "10.0.20.0/24"]
}
