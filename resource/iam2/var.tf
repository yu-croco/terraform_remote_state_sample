locals {
  listAllBuckets = "s3:ListAllMyBuckets"
  getAllBuckets = "s3:GetBucketLocation"
  targetS3Path = "arn:aws:s3:::sample-tf/*"
}

variable "iam1_role_name" {
  type = string
}
