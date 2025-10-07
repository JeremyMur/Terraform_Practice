output "container_name" {
  description = "Nom du conteneur Nginx géré par Terraform"
  value       = docker_container.nginx.name
}

output "url" {
  description = "URL locale pour accéder à Nginx"
  value       = "http://localhost:${var.external_port}"
}
