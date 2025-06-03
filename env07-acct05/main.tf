terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}

resource "null_resource" "acct05" {
  provisioner "local-exec" {
    command = "echo Module: env07-acct05"
  }
}

variable "parent_ready" {
  type    = bool
  default = true
}

output "ready" {
  value = var.parent_ready
}
