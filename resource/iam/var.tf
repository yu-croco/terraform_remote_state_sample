locals {
  listAllBuckets = "s3:ListAllMyBuckets"
  getAllBuckets = "s3:GetBucketLocation"
  targetS3Path = "arn:aws:s3:::sample-tf/*"
}
