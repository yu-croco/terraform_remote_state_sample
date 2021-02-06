// S3にtfstateを保管する場所を指定
terraform {
  backend "s3" {
    bucket = "sample-tf"
    key    = "remote_state_1"
    region = "ap-northeast-1"
  }
}
