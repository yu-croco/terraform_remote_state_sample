// main/iam側でoutputしたデータの参照先を指定する
data "terraform_remote_state" "sample_tf" {
  backend = "s3"

  config = {
    bucket = "sample-tf"
    key    = "remote_state"
    region = "ap-northeast-1"
  }
}
