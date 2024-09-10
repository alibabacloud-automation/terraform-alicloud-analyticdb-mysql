# ADB Cluster
variable "create_cluster" {
  description = "Whether to create ADB cluster. If false, you can use a existing ADB cluster by setting 'existing_cluster_id'."
  type        = bool
  default     = true
}

variable "existing_cluster_id" {
  description = "The Id of an existing ADB cluster. It will be ignored when create_cluster = true."
  type        = string
  default     = null
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "The available zone to launch ADB cluster."
  type        = string
  default     = null
}

variable "db_cluster_version" {
  description = "The version number of the cluster. Valid value: 3.0."
  type        = string
  default     = "3.0"
}

variable "db_cluster_category" {
  description = "The category of the cluster. Valid value: Basic, Cluster."
  type        = string
  default     = "Cluster"
}

variable "db_node_class" {
  description = "The node class of the cluster instance type. Valid value: C8, C32 and so on."
  type        = string
  default     = "C8"
}

variable "db_node_count" {
  description = "cluster node count, [2-128]."
  type        = number
  default     = 2
}

variable "db_node_storage" {
  description = "cluster node disk storage size, unit: GB. [100-1000]. all storage size = db_node_count * db_node_storage(2 * 100 = 200GB)."
  type        = number
  default     = 100
}

variable "mode" {
  description = " The mode of the cluster. Valid values: reserver, flexible."
  type        = string
  default     = null
}

variable "payment_type" {
  description = "The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`"
  type        = string
  default     = null
}

variable "description" {
  description = "Display name of the cluster, [2, 128] English or Chinese characters, must start with a letter or Chinese in size, can contain numbers, '_' or '.', '-'."
  type        = string
  default     = null
}
