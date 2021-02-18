resource "azurerm_storage_account" "sa" {
    name = "Storage Account Name"
    resource_group_name = "Resource Group"
    location = "Location/Region"
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = {
      environment = "Terraform Storage"
      CreateBy = "TF Admin"
    }
}
