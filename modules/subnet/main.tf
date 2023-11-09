resource "huaweicloud_subnet_v1" "example_subnet" {
  name             = var.subnet_name
  vpc_id           = var.vpc_id
  cidr             = var.subnet_cidr
  gateway_ip       = var.subnet_gateway_ip
  availability_zone = var.subnet_availability_zone
}

output "subnet_id" {
  value = huaweicloud_subnet_v1.example_subnet.id
}



