resource "aws_s3_bucket" "s3_bucket_mj" {
  bucket = "datalake-${var.environment}-${var.account_number}-${var.student_initials}-${var.student_index_no}"
  force_destroy = true

  tags = {
    Purpose = "UAM Cloud Data Processing"
    Environment = "DEV"
    Owner = var.student_full_name
  }
}
