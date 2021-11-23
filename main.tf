resource "alicloud_adb_cluster" "this" {
  count                  = var.existing_cluster_id != "" ? 0 : var.create_cluster ? 1 : 0
  description            = var.description
  zone_id                = var.availability_zone
  db_cluster_version     = var.db_cluster_version
  db_cluster_category    = var.db_cluster_category
  db_node_class          = var.db_node_class
  db_node_count          = var.db_node_count
  db_node_storage        = var.db_node_storage
  pay_type               = var.pay_type
  vswitch_id             = var.vswitch_id
}

