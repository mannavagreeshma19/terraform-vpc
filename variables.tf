variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0df8c184d5f6ae949" 
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "192.128.118.0/24"
}

variable "subnet_cidr" {
  description = "CIDR block for Subnet"
  type        = string
  default     = "192.128.118.0/28"
}
