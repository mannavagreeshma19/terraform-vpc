variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0df8c184d5f6ae949" 
}

variable "vpc_cidr_2" {
  description = "user defined vpc block a"
  type        = number
}

variable "vpc_cidr_3" {
  description = "user defined vpc block b"
  type        = number
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}
