include {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:linuxlsr/az-base-resources.git"
}
inputs = {
  environment = "default"
}