terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/network/main.tfstate"
    region = "ap-northeast-1"
  }
}