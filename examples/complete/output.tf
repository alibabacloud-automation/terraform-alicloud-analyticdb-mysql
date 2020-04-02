#################
# ADB Cluster
#################
output "this_adb_cluster_id" {
  description = "The ID of the ADB cluster."
  value       = module.adb_example.this_adb_cluster_id
}

output "this_adb_description" {
  description = "The description of ADB cluster."
  value       = module.adb_example.this_adb_description
}

output "this_adb_cluster_zone_id" {
  description = "The Zone to launch the ADB cluster."
  value       = module.adb_example.this_adb_cluster_zone_id
}

output "this_adb_cluster_vswitch_id" {
  description = "The virtual switch ID to launch ADB cluster in one VPC. "
  value       = module.adb_example.this_adb_cluster_vswitch_id
}

output "this_adb_cluster_db_cluster_version" {
  description = "The version of the ADB cluster."
  value       = module.adb_example.this_adb_cluster_db_cluster_version
}

output "this_adb_cluster_db_cluster_category" {
  description = "The catrgory type of the ADB cluster. "
  value       = module.adb_example.this_adb_cluster_db_cluster_category
}

output "this_adb_cluster_db_node_count" {
  description = "The node count of the ADB cluster."
  value       = module.adb_example.this_adb_cluster_db_node_count
}

output "this_adb_cluster_db_node_class" {
  description = "The node class of the ADB cluster. "
  value       = module.adb_example.this_adb_cluster_db_node_class
}

output "this_adb_cluster_db_node_storage" {
  description = "The node storage of the ADB cluster."
  value       = module.adb_example.this_adb_cluster_db_node_storage
}

output "this_adb_cluster_pay_type" {
  description = "The pay type"
  value       = module.adb_example.this_adb_cluster_pay_type
}