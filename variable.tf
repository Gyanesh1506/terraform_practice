variable "ec2_id" {
  description = "The ID of the EC2 instance"
  type        = string
}

variable "ec2_name" {
  description = "The name of the EC2 instance"
  type        = string
}

variable "ec2_type" {
  description = "The type of the EC2 instance"
  type        = string
}

variable "key-name" {
  description = "The name of key used for login into ec2"
  type        = string
}

variable "key_path" {
  description = "The path of key used for login into ec2"
  type        = string
}