variable "region" {
    description = "Azure Region."
}
variable "ResourceGroup" {
    description = "Please enter the resource group for the storage account."
}
variable "Storage_Account_Name" {
    description = "Please enter a unique name for this storage account."
}

resource "azurerm_storage_account" "sa" {
    name = var.Storage_Account_Name
    resource_group_name = var.ResourceGroup
    location = var.region
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "Terraform Storage"
      CreateBy = "TF Admin"
    }
}
