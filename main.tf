resource "alicloud_adb_db_cluster" "this" {
  count               = var.create_cluster ? 1 : 0
  vswitch_id          = var.vswitch_id
  zone_id             = var.availability_zone
  db_cluster_version  = var.db_cluster_version
  db_cluster_category = var.db_cluster_category
  db_node_class       = var.db_node_class
  db_node_count       = var.db_node_count
  db_node_storage     = var.db_node_storage
  mode                = var.mode
  payment_type        = var.payment_type
  description         = var.description
}
