terraform {
  required_version  = ">= 1.5.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

provider "null" {}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = "echo 'Hello Terraform!'"
  }
}
