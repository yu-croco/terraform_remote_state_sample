module "sample_tf" {
  source = "../../modules/iam2"
  // data.terraform_remote_state.${terraform_remote_stateで定義したリソース名}.outputs.${main/iam側のoutputで指定したリソース名}
  iam1_role_name = data.terraform_remote_state.sample_tf.outputs.iam_role_name
}
