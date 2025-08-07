variable "ami_id" {
  description = "ec2 instance ami id"
  type = string
  
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
  
}

variable "subnet_id" {
  description = "subnet id"
  type = string
  
}

variable "ec2_count" {
  description = "count of ec2"
  type = string
  
}

variable "env" {
  description = "What ENV We are creating (dev, qa, prod)"
  type = string
  
}