Terraform module which creates ADB cluster resources on Alibaba Cloud  
terraform-alicloud-analyticdb-mysql

本 Module 用于在阿里云的 VPC 下创建一个[ADB 云数据库](https://help.aliyun.com/product/92664.html)。

本 Module 支持创建以下资源:

* [ADB 数据库实例 (adb cluster)](https://www.terraform.io/docs/providers/alicloud/r/adb_cluster.html)

## 用法

### 你可以通过以下步骤增加terraform模板。

增加module资源到你的模板文件，例如main.tf

```hcl
module "adb" {
  source               = "terraform-alicloud-modules/analyticdb-mysql/alicloud"
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
本Module从版本v1.1.0开始已经移除掉如下的 provider 的显式设置：

```hcl
provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/analyticdb-mysql"
}
```

如果你依然想在Module中使用这个 provider 配置，你可以在调用Module的时候，指定一个特定的版本，比如 1.0.0:

```hcl
module "adb" {
  source             = "terraform-alicloud-modules/analyticdb-mysql/alicloud"
  version            = "1.0.0"
  region             = "cn-shenzhen"
  profile            = "Your-Profile-Name"
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```

如果你想对正在使用中的Module升级到 1.1.0 或者更高的版本，那么你可以在模板中显式定义一个相同Region的provider：
```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
}
module "adb" {
  source             = "terraform-alicloud-modules/analyticdb-mysql/alicloud"
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```
或者，如果你是多Region部署，你可以利用 `alias` 定义多个 provider，并在Module中显式指定这个provider：

```hcl
provider "alicloud" {
  region  = "cn-shenzhen"
  profile = "Your-Profile-Name"
  alias   = "sz"
}
module "adb" {
  source             = "terraform-alicloud-modules/analyticdb-mysql/alicloud"
  providers          = {
    alicloud = alicloud.sz
  }
  db_cluster_version = "3.0"
  pay_type           = "PostPaid"
  // ...
}
```

定义完provider之后，运行命令 `terraform init` 和 `terraform apply` 来让这个provider生效即可。

更多provider的使用细节，请移步[How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.71.0 |

提交问题
-------
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)