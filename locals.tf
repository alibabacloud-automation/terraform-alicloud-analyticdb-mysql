locals {
  # Get ID of ADB cluster
  this_cluster_id = var.create_cluster ? alicloud_adb_db_cluster.this[0].id : var.existing_cluster_id
}
