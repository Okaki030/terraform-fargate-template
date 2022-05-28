terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/routing/main.tfstate"
    region = "ap-northeast-1"
  }
}