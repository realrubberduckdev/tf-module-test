provider "azurerm" {
    features {}
}

locals {
  tags = {
    "key1" = "value1"
  }
}

module "resource_group" {
  source = "git::https://github.com/realrubberduckdev/tf-module-test.git//modules//ResourceGroup?ref=9451c9a386b411b71400aa1a382c3e93b2b9e9a0"
  name     = "tfmoduletest3"
  location = "North Europe"
}

module "storage_account" {
  source = "git::https://github.com/realrubberduckdev/tf-module-test.git//modules//StorageAccount?ref=9451c9a386b411b71400aa1a382c3e93b2b9e9a0"
  name     = "dpteststrgacc1"
  resource_group_name = module.resource_group.name
  location = "North Europe"
}