resource "azurerm_resource_group" "custom" {
  name     = lower("rg-${var.project}-${var.environment}-${var.sequence}")
  location = var.location
  tags     = local.tags
}