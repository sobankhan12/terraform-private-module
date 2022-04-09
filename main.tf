resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket-name
  force_destroy = true
  tags = var.tags

}
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"

}
resource "aws_s3_bucket_policy" "allow_access_to_s3" {
  bucket = aws_s3_bucket.mybucket.id
  policy = <<EOF
   {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::${var.bucket-name}/*"
            ]
        }
    ]
}


  EOF
}
resource "aws_s3_bucket_website_configuration" "mybucket-Configuration" {
  bucket = aws_s3_bucket.mybucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}