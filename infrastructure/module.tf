terraform {
  backend "azurerm" {
    resource_group_name  = "2056faceauthtfstate"
    storage_account_name = "2056faceauthtfstate"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "web_app" {
  source = "./web_app"
}
