# ADB Cluster
output "this_adb_cluster_id" {
  description = "The ID of the ADB cluster."
  value       = local.this_cluster_id
}

output "this_adb_description" {
  description = "The description of ADB cluster."
  value       = concat(alicloud_adb_cluster.this.*.description, [""])[0]
}

output "this_adb_cluster_zone_id" {
  description = "The Zone to launch the ADB cluster."
  value       = concat(alicloud_adb_cluster.this.*.zone_id, [""])[0]
}

output "this_adb_cluster_vswitch_id" {
  description = "The virtual switch ID to launch ADB cluster in one VPC. "
  value       = concat(alicloud_adb_cluster.this.*.vswitch_id, [""])[0]
}

output "this_adb_cluster_db_cluster_version" {
  description = "The version of the ADB cluster."
  value       = concat(alicloud_adb_cluster.this.*.db_cluster_version, [""])[0]
}

output "this_adb_cluster_db_cluster_category" {
  description = "The catrgory type of the ADB cluster. "
  value       = concat(alicloud_adb_cluster.this.*.db_cluster_category, [""])[0]
}

output "this_adb_cluster_db_node_class" {
  description = "The node class of the core node. "
  value       = concat(alicloud_adb_cluster.this.*.db_node_class, [""])[0]
}

output "this_adb_cluster_db_node_count" {
  description = "The node count of the ADB cluster. "
  value       = concat(alicloud_adb_cluster.this.*.db_node_count, [""])[0]
}

output "this_adb_cluster_db_node_storage" {
  description = "The node storage size of the ADB cluster. "
  value       = concat(alicloud_adb_cluster.this.*.db_node_storage, [""])[0]
}

output "this_adb_cluster_pay_type" {
  description = "The pay type."
  value       = concat(alicloud_adb_cluster.this.*.pay_type, [""])[0]
}