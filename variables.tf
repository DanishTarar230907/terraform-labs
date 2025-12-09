variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "nginx_server"
}

variable "internal_port" {
  description = "Internal port for Nginx"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "External port mapped to host"
  type        = number
  default     = 8081
}
