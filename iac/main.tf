provider "aws" {
  region = "us-east-2"  # Specify your desired region here
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-unique-bucket-name"  # Replace with your preferred bucket name

  tags = {
    Name        = "ExampleBucket"
    Environment = "Production"
  }
}

resource "aws_ssm_parameter" "example_parameter" {
  name  = "example_parameter"
  type  = "String"
  value = "example_value"

  tags = {
    Environment = "Production"
    Application = "ExampleApp"
  }
}
