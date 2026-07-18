terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.39"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "c15428dd-55c2-436b-89cf-52f00b912882"
}