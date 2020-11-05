include {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:linuxlsr/az-mysql.git//?ref=v0.0.5"
}
inputs = {
  location = "westus2"
  db_name = "mysqlserver-linuxlsr"
  resource_group_name = "aks-rg"
  db_sku_name = "B_Gen5_2"
  db_version = "5.7"
  ssl_enforcement = "Enabled"
  db_storage_mb = 5120
  backup_retention_days = 7
  geo_redundant_backup = "Disabled"
  }
//  environment = "default"
//  location    = "westus2"
//    name = "mysql_server"
//    resource_group_name = "mgt-rg"
//    administrator_login = "foo"
//    administrator_login_password = "onputvaluesingit"
//    ssl_enforcement_enabled = true
//    sku = {
//      name = "B_Gen5_2"
//      capacity = 2
//      tier = "Basic"
//      family = "Gen5"
//      capacity = "2"
//      }
//    storage_profile = {
//      storage_mb = 5120
//      version = "5.7"
//      auto_grow_enabled = false
//      backup_retention_days = 7
//      geo_redundant_backup_enabled = false
//      infrastructure_encryption_enabled = false
//      public_network_access_enabled = false
//      ssl_enforcement_enabled = true
//      ssl_minimal_tls_version_enforced = "TLS1_2"
//    }
//}
