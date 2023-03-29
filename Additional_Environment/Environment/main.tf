terraform {
  # The Terraform provider and version must be specified 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.28.0"
    }
  }

  # Storing the tfsatte file in Azure is optional and to do so a storage account with a blob container instance will need to be created before running the terraform code
  backend "azurerm" {
    resource_group_name  = "Terraform"
    storage_account_name = "terraformstorage1212"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = false
}