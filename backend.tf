data "aws_region" "current" {}

terraform {
  backend "s3" {
    bucket="main-bucket0"
    key="my_state/terraform.tfstate"
    region= data.aws_region.current.name
  }
}