locals {
  # Get ID of ADB cluster
  this_cluster_id = var.existing_cluster_id != "" ? var.existing_cluster_id : concat(alicloud_adb_cluster.this.*.id, [""])[0]
}
