// terraform_remote_stateの情報を管理するためのリソース
resource "aws_s3_bucket" "sample_tf" {
  bucket = "sample-tf"
  versioning {
    enabled = true
  }
}
