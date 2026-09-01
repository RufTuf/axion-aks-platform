module "axion_resource_group" {
  source   = "../../Module/azurerm_resource_group"
  axion-rg = var.axion-rg1

}

module "axionaks" {
  depends_on = [module.axion_resource_group]
  source     = "../../Module/azurerm_aks_cluster"
  axion_aks  = var.axion_aks1
  
}