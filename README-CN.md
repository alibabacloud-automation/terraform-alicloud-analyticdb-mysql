Terraform module which creates ADB cluster resources on Alibaba Cloud  
terraform-alicloud-analyticdb-mysql
=====================================================================


本 Module 用于在阿里云的 VPC 下创建一个[ADB 云数据库](https://help.aliyun.com/product/92664.html)。

本 Module 支持创建以下资源:

* [ADB 数据库实例 (adb cluster)](https://www.terraform.io/docs/providers/alicloud/r/adb_cluster.html)

## Terraform 版本

本模版要求使用 Terraform 0.12 和阿里云 Provider 1.71.0+。

## 用法
-----
### 你可以通过以下步骤增加terraform模板。

增加module资源到你的模板文件，例如main.tf

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

## 示例

* [ADB实例创建示例](https://github.com/terraform-alicloud-modules/terraform-alicloud-analyticdb-mysql/tree/master/examples/complete)

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

提交问题
-------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by quanyun.

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)


