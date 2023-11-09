resource "huaweicloud_vpc_v1" "example_vpc" {
  name        = var.vpc_name
  cidr        = var.vpc_cidr
  description = var.vpc_description
}

output "vpc_id" {
  value = huaweicloud_vpc_v1.example_vpc.id
}





