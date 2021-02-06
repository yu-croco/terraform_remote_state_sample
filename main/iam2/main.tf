module "sample_tf" {
  source = "../../resource/iam2"
  iam1_role_name = data.terraform_remote_state.sample_tf.outputs.iam_role_name
}
