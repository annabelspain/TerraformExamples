output "app_service_plan_id" {
  value       = azurerm_service_plan.app_service_plan.id
  description = "The ID of the App Service Plan."
}

output "app_service_plan_name" {
  value       = var.app_service_plan_name
  description = "The name of the App Service Plan component."
}