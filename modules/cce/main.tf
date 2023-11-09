resource "huaweicloud_cce_cluster_v3" "example_cluster" {
  name               = var.cluster_name
  availability_zone  = var.cluster_availability_zone
  container_network  = var.vpc_id
  version            = var.k8s_version
  flavor             = var.node_flavor

  # ...
}

output "cluster_id" {
  value = huaweicloud_cce_cluster_v3.example_cluster.id
}



