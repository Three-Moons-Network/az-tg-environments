include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::ssh://git@github.com:linuxlsr/az-base-resources.git//"
}
inputs = {
  environment = "default"
  location    = "westus2"
}
