// S3にtfstateを保管する場所を指定
terraform {
  backend "s3" {
    bucket = "sample-tf"
    key    = "terraform.tfstate1"
    region = "ap-northeast-1"
  }
}
