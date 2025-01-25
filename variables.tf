variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0df8c184d5f6ae949" 
}

variable "vpc_a" {
  description = "user defined vpc block a"
  type        = number
}

variable "vpc_b" {
  description = "user defined vpc block b"
  type        = number
}

variable "subnet_cidr" {
  description = "CIDR block for Subnet"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}
