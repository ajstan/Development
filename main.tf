## ASt 31/03/22 
## 
## Build an S3 Resource bucket
resource "aws_s3_bucket" "resource_bucket" {
  bucket = "resource-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "Resources"
    Environment = var.environment
  }
}
## Alex has helped me