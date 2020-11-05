infra       = "https://github.com/linuxlsr/az-base-infra"
environment = "default"
location = "westus2"
name        = "linuxlsr"
db_server_name = "mysql_server"
resource_group_name = "mgt-rg"
//administrator_login = "foo"
//administrator_login_password = "noputvaluesingit"
//administrator_login = var.admin_username
//administrator_login_password = var.db_password
//sku_name = var.sku_name
//storage_mb = var.storage_mb
db_version = "5.7"
auto_grow_enabled                 = true
backup_retention_days             = 7
geo_redundant_backup_enabled      = false
infrastructure_encryption_enabled = false
public_network_access_enabled     = false
ssl_enforcement_enabled           = true
ssl_minimal_tls_version_enforced  = "TLS1_2"


