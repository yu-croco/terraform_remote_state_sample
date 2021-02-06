// S3にtfstateを保管する場所を指定
terraform {
  backend "s3" {
    bucket = "sample-tf"
    key    = "terraform.tfstate2"
    region = "ap-northeast-1"
  }
}

// main/iam側でoutputしたデータを参照するための設定
data "terraform_remote_state" "sample_tf" {
  backend = "s3"

  config = {
    bucket = "sample-tf"
    key    = "terraform.tfstate1"
    region = "ap-northeast-1"
  }
}

//terraform {
//  backend "s3" {
//    bucket = "sample-tf"
//    key    = "remote_state_1"
//    region = "ap-northeast-1"
//  }
//}