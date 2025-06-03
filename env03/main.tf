terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}

resource "null_resource" "env03" {
  provisioner "local-exec" {
    command = "echo Module: env03"
  }
}

variable "parent_ready" {
  type    = bool
  default = true
}

output "ready" {
  value = var.parent_ready
}
