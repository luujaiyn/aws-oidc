provider "aws" {
  region = "us-east-1"
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

resource "aws_instance" "my_web_app" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "m3.xlarge"

  tags = {
    Environment = "test"
    Project     = "oidc-cost-test"
  }
}