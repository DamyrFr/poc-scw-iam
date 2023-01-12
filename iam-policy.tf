resource "scaleway_iam_policy" "dev" {
  name     = "developers permissions"
  group_id = scaleway_iam_group.dev.id
  rule {
    project_ids          = [data.scaleway_account_project.staging.id, data.scaleway_account_project.prod.id]
    permission_set_names = ["InstancesReadOnly", "KubernetesReadOnly", "ObjectStorageBucketsRead"]
  }
  rule {
    project_ids          = [data.scaleway_account_project.staging.id]
    permission_set_names = ["ObjectStorageObjectsWrite"]
  }
}

resource "scaleway_iam_policy" "ops" {
  name     = "SRE permissions"
  group_id = scaleway_iam_group.ops.id
  rule {
    project_ids          = [data.scaleway_account_project.staging.id, data.scaleway_account_project.prod.id]
    permission_set_names = ["KubernetesFullAccess", "InstancesFullAccess", "ObjectStorageBucketsRead", "ObjectStorageObjectsWrite"]
  }
}
