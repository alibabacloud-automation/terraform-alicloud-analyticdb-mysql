Terraform module which creates a ADB cluster on Alibaba Cloud.  
terraform-alicloud-analyticdb-mysql
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-analyticdb-mysql/blob/master/README-CN.md)

Terraform module which creates ADB cluster resources on Alibaba Cloud

These types of resources are supported:

* [Alicloud adb cluster](https://www.terraform.io/docs/providers/alicloud/r/adb_cluster.html)

----------------------

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.71.0+.

## Usage
-----
### You can use this in your terraform template with the following steps.

Adding a module resource to your template, e.g. main.tf

```hcl
module "adb" {
  source               = "terraform-alicloud-modules/adb/alicloud"
  profile              = "Your-Profile-Name"
  region               = "cn-shenzhen"
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

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
---------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
