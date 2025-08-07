variable "env" {
  description = "What ENV We are creating (dev, qa, prod)"
  type = string
  
}

variable "vpc_cidr" {
  type = string
  description = "vpc cidr"
}

variable "subnet_cidr" {
  type = string
  description = "subnet cidr"
}

variable "availability_zone" {
  type = string
  description = "availability_zone of subnet"
}