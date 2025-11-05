output "web_container_ip" {
  description = "Dirección IP del contenedor web"
  value       = docker_container.web.network_data[0].ip_address
}

output "web_container_port" {
  description = "Puerto externo del contenedor web"
  value       = var.web_external_port
}

output "redis_container_ip" {
  description = "Dirección IP del contenedor Redis"
  value       = docker_container.redis.network_data[0].ip_address
}
