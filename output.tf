output "container_name" {
  description = "The name of the Nginx container"
  value       = docker_container.nginx_server.name
}

output "external_port" {
  description = "The external port exposed on the host"
  value       = docker_container.nginx_server.ports[0].external
}
