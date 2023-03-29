variable "app_service_plan_name" {
  type        = string
  description = "Specifies the name of the App Service Plan component."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "os_type" {
  description = "The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the App Service Plan component."
}

variable "sku_name" {
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3, and Y1."
}

variable "app_service_environment_id" {
  type = string
  default = null
}

variable "maximum_elastic_worker_count" {
  type        = string
  description = "The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan."
}

variable "worker_count" {
  description = "The number of Workers (instances) to be allocated."
}

variable "per_site_scaling_enabled" {
  type = bool
  default = false
}

variable "zone_balancing_enabled" {
  description = "Should the Service Plan balance across Availability Zones in the region. Changing this forces a new resource to be created."
}

variable "tags" {
  type    = map(string)
  default = {}
}