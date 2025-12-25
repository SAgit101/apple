terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  # IMPORTANT:
  # We are using least-privilege RBAC (blob-only),
  # so Terraform must NOT try to register providers at subscription scope.
  resource_provider_registrations = "none"
}
