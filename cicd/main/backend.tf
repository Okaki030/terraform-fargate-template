terraform {
  backend "s3" {
    bucket = "okawa-tfstate"
    key    = "template/cicd/main.tfstate"
    region = "ap-northeast-1"
  }
}