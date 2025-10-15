variable "aws_region" {
  default = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2023 kernel-6.1"
  default     = "ami-0336cdd409ab5eec4" # Valid for eu-west-2
}

variable "project_prefix" {
  default = "my-dotnet"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "MyStrongPass123!"
}
