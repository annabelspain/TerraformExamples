#######################################################################
#                   Resource Groups                                   #
#######################################################################
module "resource_groups" {
  # Pulls the resource group module configuration from the modules folder
  source = "../Modules/resource-group"
  # Loops around the map of resource_groups configured in the .tfvars 
  for_each = var.resource_groups
  # Loops around each value within each resource_groups map 
  name     = each.value.resource_group_name
  location = each.value.location
  # Pulls the tag value from the environment variable created in .tfvars
  tags = var.tags
}

#######################################################################
#                      App Service Plans                              #
#######################################################################
module "tf-azurerm-app-service-plans" {
  source                       = "../Modules/app-service-plan"
  for_each                     = var.app_service_plans
  app_service_plan_name        = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  os_type                      = each.value.os_type
  maximum_elastic_worker_count = each.value.maximum_elastic_worker_count
  worker_count                 = each.value.worker_count
  app_service_environment_id   = each.value.app_service_environment_id
  per_site_scaling_enabled     = each.value.per_site_scaling_enabled
  zone_balancing_enabled       = each.value.zone_balancing_enabled
  sku_name                     = each.value.sku
  tags                         = var.tags
}