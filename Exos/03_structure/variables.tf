variable "external_port" {
  description = "Port externe mappé vers le port 80 du conteneur Nginx"
  type        = number

  validation {
    condition     = var.external_port >= 1 && var.external_port <= 65535
    error_message = "Le port doit être compris entre 1 et 65535."
  }
}
