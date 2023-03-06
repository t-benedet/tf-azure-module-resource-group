output "rg-name" {
  description = "Name of resource group."
  value       = azurerm_resource_group.custom.name
}
output "rg-id" {
  description = "ID of resource group."
  value       = azurerm_resource_group.custom.id
}