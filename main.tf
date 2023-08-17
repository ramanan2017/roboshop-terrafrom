module "components" {
  source   = "git::https://github.com/ramanan2017/tf-module-vpc.git"
  for_each = var.vpc
  cidr = each.value["cidr"]
}

