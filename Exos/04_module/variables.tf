variable "image" {
  description = "Image Docker de base"
  type        = string
  default     = "nginx:latest"
}

variable "container_name_1" {
  description = "Nom du 1er conteneur"
  type        = string
  default     = "nginx-tf-1"
}

variable "external_port_1" {
  description = "Port hôte pour nginx 1"
  type        = number
  default     = 9090
}

# Variables pour la 2e instance (Exercice 4.2)
variable "container_name_2" {
  description = "Nom du 2e conteneur"
  type        = string
  default     = "nginx-tf-2"
}

variable "external_port_2" {
  description = "Port hôte pour nginx 2"
  type        = number
  default     = 9091
}
