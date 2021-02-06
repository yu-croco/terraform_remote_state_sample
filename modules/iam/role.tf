data "aws_iam_policy_document" "sample_tf" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "sample_tf" {
  name                  = "sample_tf"
  assume_role_policy    = data.aws_iam_policy_document.sample_tf.json
  description           = "for terraform example"
  force_detach_policies = false
  tags                  = {}
}
