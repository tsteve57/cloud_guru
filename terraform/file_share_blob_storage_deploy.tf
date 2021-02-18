# "azurerm_storage_account" is azure resource object, "lab" is instance name, "name" is azure resource property name
resource "azurerm_storage_account" "lab" {
    name = "unique storage account name"
    resource_group_name = "Resource group name"
    location = "eastus"
    account_tier = "Standard"
    account_replication_type = "GRS"
}

resource "azurerm_storage_container" "lab" {
    name = "blob container for lab"
    storage_account_name = azurerm_storage_account.lab.name   #use previous defined resource
    container_access_type = "private"
}

resource "azurerm_storage_blob" "lab" {
    name = "TerraformBlob"
    storage_account_name = azurerm_storage_account.lab.name   
    storage_container_name = azurerm_storage_container.lab.name   
    type = "Block"
}

resource "azurerm_storage_share" "lab" {
    name = "Terraformshare"
    storage_account_name = azurerm_storage_account.lab.name   #use previous defined resource
    quota = 50
}
