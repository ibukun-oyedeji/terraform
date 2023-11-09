
resource "huaweicloud_cce_repository_v3" "example_repo" {
  name          = var.repo_name
  repository    = var.repo_repository
  repository_type = var.repo_type
}

output "repository_id" {
  value = huaweicloud_cce_repository_v3.example_repo.id
}



