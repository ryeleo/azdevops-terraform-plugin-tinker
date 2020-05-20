# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# ARM_ACCESS_KEY: the access key that gives access to terraform03 container in your Azure subscription

# ---------------------------------------------------------------------------------------------------------------------
# PROVIDER & BACKEND
# ---------------------------------------------------------------------------------------------------------------------
provider "azurerm" {
  version         = "~>2.0"
  subscription_id = "d88e0c85-6145-437a-99a3-64e8900098a7"
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "terraform03"
    container_name       = "tfstate"
    key                  = "azdevops-terraform-plugin-tinker.tfstate"
  }
}
