resource "aws_s3_bucket" "testbucket" {
  bucket = "awseksbackup"

  tags = {
    "Env": "Dev",
    "purpose": "test"
  }
}