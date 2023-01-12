data "scaleway_iam_user" "moi" {
  email = "$VOTRE EMAIL"
}

data "scaleway_account_project" "prod" {
  name = "prod"
}

data "scaleway_account_project" "staging" {
  name = "staging"
}
