provider "azurerm" {
    version = 2.44.0
}
terraform {
  backend "azurerm" {
    resource_group_name = "TFResourceGroup"
    storage_account_name = "storage4terraform"
    container_name = "statefile"
    key = "terraform.tfstate"   
  }
}
