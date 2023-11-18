resource "aws_ssm_parameter" "foo" {
  name  = "foo"
  type  = "String"
  value = "bar"
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "skincenter-terraform-tfstates"
    key    = "network/terraform.tfstate"
    region = "us-east-2"
  }
}