output "container_name" {
  description = "Nom du conteneur Nginx géré par Terraform"
  value       = docker_container.nginx.name
}