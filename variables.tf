#################
# Provider
#################
variable "profile" {
  description = "(Deprecated from version 1.1.0) The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}

variable "shared_credentials_file" {
  description = "(Deprecated from version 1.1.0) This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "region" {
  description = "(Deprecated from version 1.1.0) The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "(Deprecated from version 1.1.0) Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

##############################################################
# ADB Cluster
##############################################################
variable "existing_cluster_id" {
  description = "The Id of an existing ADB cluster. If set, the 'create_cluster' will be ignored."
  default     = ""
}

variable "create_cluster" {
  description = "Whether to create ADB cluster. If false, you can use a existing ADB cluster by setting 'existing_cluster_id'."
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "The available zone to launch ADB cluster."
  type        = string
  default     = ""
}

variable "description" {
  description = "Display name of the cluster, [2, 128] English or Chinese characters, must start with a letter or Chinese in size, can contain numbers, '_' or '.', '-'."
  type        = string
  default     = "tf-module-adb"
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
  description = "The node class of the cluster instance type. Valid value: C8, C24 and so on."
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

variable "pay_type" {
  description = "pay type, Valid value:Prepaid: The subscription billing method is used, Postpaid: The pay-as-you-go billing method is used."
  type        = string
  default     = "PostPaid"
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}