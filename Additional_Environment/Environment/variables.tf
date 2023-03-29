variable "tags" {
  type        = map(string)
  description = "environment tags"
}

variable "resource_groups" {
  description = "The resouce groups created by the Terraform configuration."
}

variable "app_service_plans" {
  description = "The app service plans created by the Terraform configuration."
}