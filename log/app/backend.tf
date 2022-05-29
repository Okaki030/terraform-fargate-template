terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/log/app.tfstate"
    region = "ap-northeast-1"
  }
}