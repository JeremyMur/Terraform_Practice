output "container_name" {
  value       = docker_container.nginx.name
  description = "Nom du conteneur créé par le module"
}

output "url" {
  value       = "http://localhost:${var.external_port}"
  description = "URL locale d'accès"
}
