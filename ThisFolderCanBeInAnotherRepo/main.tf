provider "azurerm" {
    features {}
}

module "resource_group" {
  source = "git::https://github.com/realrubberduckdev/tf-module-test.git//modules//ResourceGroup"
  name     = "tfmoduletest3"
  location = "North Europe"
}

module "storage_account" {
  source = "git::https://github.com/realrubberduckdev/tf-module-test.git//modules//StorageAccount"
  name     = "dpteststrgacc1"
  resource_group_name = module.resource_group.name
  location = "North Europe"
}