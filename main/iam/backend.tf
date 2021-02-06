// S3にtfstateを保管する場所を指定
terraform {
  backend "s3" {
    bucket = "sample-tf"
    key    = "remote_state"
    region = "ap-northeast-1"
  }
}
