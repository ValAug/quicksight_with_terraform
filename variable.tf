# --main/variables--

variable "dashboard_id" {
  type = string
  default = "your-first-qs-dashboard-id"
}

variable "dashboard_name" {
  type = string
  default = "your-first-qs-dashboard-name"
}

variable "version_description" {
  type = string
  default = "version"
}

#-- Data set
variable "data_set_id" {
  type = string
  default = "data-set-id"
}

variable "data_set_name" {
  type = string
  default = "dataset-name"
}

variable "physical_table_map_id" {
  type = string
  default = "physical-table-map-id-name"
}

#-- Data source
variable "data_source_id" {
  type = string
  default = "datasource-id"
}

variable "bucket_name" {
  type = string
  default = "my-quicksight-bucket-qs1" #--> change to your unique bucket name
}

variable "quicksight_role_name" {
  type = string
  default = "quicksight-s3-role"
}

variable "quicksight_role_policy_name" {
  type = string
  default = "quicksight-s3-access-policy"
}