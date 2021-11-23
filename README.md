Terraform module which creates a ADB cluster on Alibaba Cloud.  
terraform-alicloud-analyticdb-mysql


English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-analyticdb-mysql/blob/master/README-CN.md)

Terraform module which creates ADB cluster resources on Alibaba Cloud

These types of resources are supported:

* [Alicloud adb cluster](https://www.terraform.io/docs/providers/alicloud/r/adb_cluster.html)

----------------------

## Usage

### You can use this in your terraform template with the following steps.

Adding a module resource to your template, e.g. main.tf

```hcl
module "adb" {
  source               = "terraform-alicloud-modules/adb/alicloud"
  #################
  # ADB Cluster
  #################
  db_cluster_version     = "3.0"
  db_cluster_category    = "Cluster"
  db_node_class          = "C8"
  db_node_count          = 2
  db_node_storage        = 200
  pay_type               = "PostPaid"
  vswitch_id             = "vsw-wz9dtqayzctoqh*******"
  description            = "tf-module-adb"
  availability_zone      = "cn-shenzhen-e"
}
```

## Examples

* [example](https://github.com/terraform-alicloud-modules/terraform-alicloud-analyticdb-mysql/tree/master/examples/complete)

## Notes
From the version v1.1.0, the module has removed the following `provider` setting:

```hcl
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/adb"
}
```

If you still want to use the `provider` setting to apply this module, you can specify a supported version, like 1.0.0:

```hcl
module "adb" {
  source             = "terraform-alicloud-modules/adb/alicloud"
  version            = "1.0.0"
  region             = "cn-shenzhen"
  profile            = "Your-Profile-Name"
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```

If you want to upgrade the module to 1.1.0 or higher in-place, you can define a provider which same region with
previous region:

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
}
module "adb" {
  source             = "terraform-alicloud-modules/adb/alicloud"
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```
or specify an alias provider with a defined region to the module using `providers`:

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
  alias   = "sz"
}
module "adb" {
  source             = "terraform-alicloud-modules/adb/alicloud"
  providers          = {
    alicloud = alicloud.sz
  }
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```

and then run `terraform init` and `terraform apply` to make the defined provider effect to the existing module state.

More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.71.0 |

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
---------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
