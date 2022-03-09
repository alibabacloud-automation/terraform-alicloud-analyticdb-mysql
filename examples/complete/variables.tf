# ADB Cluster
variable "db_node_storage" {
  description = "cluster node disk storage size, unit: GB. [100-1000]. all storage size = db_node_count * db_node_storage(2 * 100 = 200GB)."
  type        = number
  default     = 100
}

variable "description" {
  description = "Display name of the cluster, [2, 128] English or Chinese characters, must start with a letter or Chinese in size, can contain numbers, '_' or '.', '-'."
  type        = string
  default     = "tf-testacc-description"
}