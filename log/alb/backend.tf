terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/log/alb.tfstate"
    region = "ap-northeast-1"
  }
}