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
  host = "npipe:////./pipe/docker_engine"

}

# Image Nginx
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Conteneur Nginx
resource "docker_container" "nginx" {
  name  = "nginx-tf"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.external_port
    # ip       = "0.0.0.0"   # optionnel
    # protocol = "tcp"       # optionnel
  }
}
