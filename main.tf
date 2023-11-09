module "provider" {
  source = "./modules/provider"
}

module "vpc" {
  source = "./modules/vpc"
  vpc_name        = "my-vpc"
  vpc_cidr        = "10.0.0.0/16"
  vpc_description = "My VPC"
}

module "subnet" {
  source = "./modules/subnet"
  subnet_name           = "subnet-1"
  vpc_id               = module.vpc.vpc_id
  subnet_cidr           = "10.0.1.0/24"
  subnet_gateway_ip     = "10.0.1.1"
  subnet_availability_zone = "your-availability-zone-1"
}

module "cce" {
  source = "./modules/cce"
  cluster_name           = "my-k8s-cluster"
  cluster_availability_zone = "your-availability-zone-1"
  vpc_id                 = module.vpc.vpc_id
  k8s_version            = "1.19.9"
  node_flavor            = "s7n.xlarge.2"

  # ...
}

module "container_repo" {
  source = "./modules/container_repo"
  repo_name        = "my-container-repo"
  repo_repository   = "my-container-repo"
  repo_type         = "cce"

  # ...
}

