# Main Terraform configuration for Docker + Nginx

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_server" {
  image = docker_image.nginx.image_id   # ✅ use image_id instead of latest
  name  = var.container_name

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
