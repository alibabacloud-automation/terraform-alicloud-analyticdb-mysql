data "alicloud_vpcs" "default" {
  name_regex = "default-NODELETING"
}

data "alicloud_vswitches" "default" {
  name_regex = "default-zone-g"
  vpc_id     = data.alicloud_vpcs.default.vpcs.0.id
}

module "adb_example" {
  source = "../.."

  create_cluster = true

  vswitch_id          = data.alicloud_vswitches.default.vswitches.0.id
  availability_zone   = data.alicloud_vswitches.default.vswitches.0.zone_id
  db_cluster_version  = "3.0"
  db_cluster_category = "Cluster"
  db_node_class       = "C8"
  db_node_count       = 2
  db_node_storage     = var.db_node_storage
  mode                = "reserver"
  pay_type            = "PostPaid"
  description         = var.description

}