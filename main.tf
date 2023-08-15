module "components" {
  source   = "git::https://github.com/ramanan2017/tf-module-basic-test.git"
  for_each = var.components


  zone_id        = var.zone_id
  security_group = var.security_groups
  name           = each.value["name"]
  instance_type  = each.value["instance_type"]

}
