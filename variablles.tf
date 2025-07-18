variable "key_name" {
  description = "Name of the EC2 Key Pair"
  type        = string
}

variable "custom_port" {
  description = "Custom port to allow in security group"
  type        = number
  default     = 8080
}
