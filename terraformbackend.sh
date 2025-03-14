#!/bin/bash

#tf_state
RESOURCE_GROUP_NAME=Terraform_Backend_GHA
#Unique_Name
STORAGE_ACCOUNT_NAME=terraformvaldesg
#tf_state
CONTAINER_NAME=terraformcontainervaldesg

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus --tags Owner=valdesg Tower=Wintel Project=GitHubActions

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME