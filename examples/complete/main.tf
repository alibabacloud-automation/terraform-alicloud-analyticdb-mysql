
data "alicloud_adb_zones" "default" {}

data "alicloud_vpcs" "default" {
  name_regex = "^default-NODELETING$"
}
data "alicloud_vswitches" "default" {
  vpc_id  = data.alicloud_vpcs.default.ids[0]
  zone_id = data.alicloud_adb_zones.default.ids[0]
}

module "adb_example" {
  source = "../.."

  vswitch_id          = data.alicloud_vswitches.default.vswitches[0].id
  availability_zone   = data.alicloud_vswitches.default.vswitches[0].zone_id
  db_cluster_version  = null
  db_cluster_category = "Cluster"
  db_node_class       = "C8"
  db_node_count       = 1
  db_node_storage     = var.db_node_storage
  mode                = "reserver"
  payment_type        = "PayAsYouGo"
  description         = var.description

}
