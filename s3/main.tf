
resource "aws_s3_bucket" "s3" {
  
  bucket = var.bucket


  tags = {
    Name        = var.bucketname
    Environment = var.environment
    owner = var.owner
    purpose = var.purpose
  }
  
}