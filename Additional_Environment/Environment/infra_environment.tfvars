#######################################################################
#                              Tags                                   #
#######################################################################
tags = {
  # Through defining the tag in its own map, we do not need to specifiy the tag value accross each resource, but we can call this map instead in the environment.tf
  environment = "dev"
}

#######################################################################
#                          Resource Groups                            #
#######################################################################
resource_groups = {
  "new-resource-group-001" = {
    resource_group_name = "new-resource-group-001"
    location            = "uksouth"
  },
  # Using maps we can create multiple instances within the loop that can contain different values
  "new-resource-group-002" = {
    resource_group_name = "new-resource-group-002"
    location            = "ukwest"
  }
}

#######################################################################
#                      App Service Plans                              #
#######################################################################
app_service_plans = {
  "new-app-service-plan-001" = {
    name                         = "new-app-service-plan-001"
    resource_group_name          = "new-resource-group-001"
    location                     = "uksouth"
    os_type                      = "Linux"
    maximum_elastic_worker_count = null
    worker_count                 = null
    app_service_environment_id   = null
    per_site_scaling_enabled     = false
    zone_balancing_enabled       = false
    sku                          = "P1v2"
  },
}