resource "scaleway_iam_application" "app" {
  count = length(var.apps)
  name        = "poc-application-${var.apps[count.index]}"
  description = "A simple application to create"
}
