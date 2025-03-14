# backend.tf

terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform_Backend_GHA"
    storage_account_name = "terraformvaldesg"
    container_name       = "terraformcontainervaldesg"
    key                  = "tfstatekey.tfstate"
    tenant_id            = "0b3fc178-b730-4e8b-9843-e81259237b77"
    subscription_id      = "15158422-ef98-425f-a0e3-6e53c81ba478"
  }
}