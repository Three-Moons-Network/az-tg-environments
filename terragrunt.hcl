terraform {
  extra_arguments "common_vars" {
    commands = ["plan", "apply", "destroy"]

    arguments = [
      "-var-file=${get_terragrunt_dir()}/../env-vars/standup.tfvars"
    ]
  }
}

remote_state {
  backend = "azurerm"
  config = {
    resource_group_name     = "mgt-rg"
    storage_account_name    = "tfstatesasoops"
    container_name          = "tfstatestorage"
    key                     = "${path_relative_to_include()}/terraform.tfstate"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "azurerm" {
  features {}
  version = "~>2.5.0"

}

provider "random" {
  version = "~>2.2"
}

provider "tls" {
  version = "~>2.1"
}

provider "azuread" {
  version = "~>0.8"
}

provider "local" {
  version = "~>1.4"
}

terraform {
  backend "azurerm" {}
}
EOF
}