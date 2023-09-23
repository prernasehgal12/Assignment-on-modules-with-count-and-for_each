terraform {
  backend "s3" {
    bucket = "prernatestbucket9"
    key    = "prerna.tfstate"
    region = "ap-south-1"
  }
}