module "vpc" {
  source = "./module_VPC"
}
module "RouteTable" {
  depends_on = [module.vpc, module.NATGateWay]
  NATid      = module.NATGateWay.GetNatGateway
  source     = "./module_RouteTable"
}
module "NATGateWay" {
  depends_on = [module.vpc]
  source     = "./module_NatGateway"
}
module "SCG" {
  depends_on = [module.RouteTable]
  source     = "./module_SCG"
}
module "EC2" {
  depends_on = [module.NATGateWay, module.vpc, module.RouteTable, module.SCG]
  source     = "./module_EC2"
}