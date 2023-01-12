resource "scaleway_iam_group" "dev" {
  name            = "dev_group"
  application_ids = [scaleway_iam_application.app[0].id, scaleway_iam_application.app[1].id]
}

resource "scaleway_iam_group" "ops" {
  name            = "ops_group"
  application_ids = [scaleway_iam_application.app[2].id]
  user_ids        = [data.scaleway_iam_user.moi.id]
}
