3 of 3 repos to stand up azure resources with terragrunt with environments

Source common.env to load secrets into env-vars


back and forth with attributes and values for mysql module:
```
[terragrunt] 2020/11/04 22:33:26 Running command: terraform plan -var-file=/home/az-tg-environments/dev/../env-vars/standup.tfvars -out my.plan
Acquiring state lock. This may take a few moments...
var.db_server_name
  Enter a value: mysql-server


Error: No value for required variable

  on variables.tf line 79:
  79: variable "administrator_login" {}

The root module input variable "administrator_login" is not set, and has no
default value. Use a -var or -var-file command line argument to provide a
value for this variable.


Error: No value for required variable

  on variables.tf line 80:
  80: variable "administrator_login_password" {}

The root module input variable "administrator_login_password" is not set, and
has no default value. Use a -var or -var-file command line argument to provide
a value for this variable.


Error: No value for required variable

  on variables.tf line 82:
  82: variable "sku_name" {}

The root module input variable "sku_name" is not set, and has no default
value. Use a -var or -var-file command line argument to provide a value for
this variable.


Error: No value for required variable

  on variables.tf line 83:
  83: variable "storage_mb" {}

The root module input variable "storage_mb" is not set, and has no default
value. Use a -var or -var-file command line argument to provide a value for
this variable.


Error: Variables not allowed

  on /home/az-tg-environments/dev/../env-vars/standup.tfvars line 6:
   6: administrator_login = var.admin_username

Variables may not be used here.


Error: Variables not allowed

  on /home/az-tg-environments/dev/../env-vars/standup.tfvars line 7:
   7: administrator_login_password = var.db_password

Variables may not be used here.


Error: Variables not allowed

  on /home/az-tg-environments/dev/../env-vars/standup.tfvars line 8:
   8: sku_name = var.sku_name

Variables may not be used here.


Error: Variables not allowed

  on /home/az-tg-environments/dev/../env-vars/standup.tfvars line 9:
   9: storage_mb = var.storage_mb

Variables may not be used here.

[terragrunt] 2020/11/04 22:33:49 Hit multiple errors:
exit status 1
```
