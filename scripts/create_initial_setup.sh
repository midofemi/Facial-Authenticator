#!bin/bash

az group create -n 2056faceauthtfstate -l eastus2
 
az storage account create -n 2056faceauthtfstate -g 2056faceauthtfstate -l eastus2 --sku "Standard_LRS"
 
az storage container create -n tfstate --account-name 2056faceauthtfstate
