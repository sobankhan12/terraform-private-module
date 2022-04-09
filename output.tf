output "arn" {
  description = "arn of s3 bucket"
  value       = aws_s3_bucket.mybucket.arn

}
output "name" {
  description = "name of bucket"
  value       = aws_s3_bucket.mybucket.id

}
output "domain" {
  description = "domain of s3 bucket"
  value       = aws_s3_bucket.mybucket.website_domain
}
output "endpoint" {
  description = "endpoint of s3 bucket"
  value       = aws_s3_bucket.mybucket.website_endpoint

}