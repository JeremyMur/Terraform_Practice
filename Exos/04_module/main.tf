terraform {
  required_version = ">= 1.5.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  # host = "npipe:////./pipe/docker_engine"   # Windows + Docker Desktop (si besoin)
  # host = "unix:///var/run/docker.sock"      # Linux/macOS
}

# Appel du module local — 1ère instance (Exercice 4.1)
module "nginx1" {
  source        = "./modules/nginx"
  name          = var.container_name_1
  image         = var.image
  external_port = var.external_port_1
}

# (Pour Exercice 4.2) 2ème instance — décommente pour lancer deux Nginx
# module "nginx2" {
#   source        = "./modules/nginx"
#   name          = var.container_name_2
#   image         = var.image
#   external_port = var.external_port_2
# }

# Outputs pratiques à la racine
output "nginx1" {
  value = {
    name = module.nginx1.container_name
    url  = module.nginx1.url
  }
}
# output "nginx2" {
#   value = {
#     name = module.nginx2.container_name
#     url  = module.nginx2.url
#   }
# }
