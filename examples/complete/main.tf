variable "region" {
  default = "cn-shenzhen"
}

variable "profile" {
  default = "default"
}

provider "alicloud" {
  region  = var.region
  profile = var.profile
}

data "alicloud_zones" "default" {
  available_resource_creation = "ADB"
  enable_details              = true
}

data "alicloud_vpcs" "default" {
  is_default = true
}

data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids.0
  zone_id = data.alicloud_zones.default.zones.0.id
}

module "adb_example" {
  source                 = "../.."
  region                 = var.region
  description            = "tf-module-adb-cluster-example"
  db_cluster_version     = "3.0"
  db_cluster_category    = "Cluster"
  db_node_class          = "C8"
  db_node_count          = 2
  db_node_storage        = 200
  pay_type               = "PostPaid"
  vswitch_id             = data.alicloud_vswitches.default.ids.0
  availability_zone      = data.alicloud_zones.default.zones.0.id
}