module "axion_resource_group" {
  source   = "../../Module/azurerm_resource_group"
  axion-rg = var.axion-rg1

}

# module "axionaks" {
#   depends_on = [module.axion_resource_group]
#   source     = "../../Module/azurerm_aks_cluster"
#   axion_aks  = var.axion_aks1

# }

module "axionacr" {
  depends_on          = [module.axion_resource_group]
  source              = "../../Module/azurerm_acr"
  axion_acr           = var.axion_acr1
  
} 