variable "name" {
  description = "Nom du conteneur"
  type        = string
}

variable "image" {
  description = "Image Docker à utiliser"
  type        = string
  default     = "nginx:latest"
}

variable "external_port" {
  description = "Port hôte mappé vers le port 80 du conteneur"
  type        = number
  validation {
    condition     = var.external_port >= 1 && var.external_port <= 65535
    error_message = "Le port doit être compris entre 1 et 65535."
  }
}
