terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/app/main.tfstate"
    region = "ap-northeast-1"
  }
}