data "aws_iam_policy_document" "sample_tf2" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "sample_tf2" {
  name                  = "${var.iam1_role_name}-2"
  assume_role_policy    = data.aws_iam_policy_document.sample_tf2.json
  description           = "for terraform example"
  force_detach_policies = false
  tags                  = {}
}
