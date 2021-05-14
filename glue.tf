resource "aws_glue_crawler" "glue_crawler_raw_zone_mj" {
  database_name = aws_glue_catalog_database.datalake_db_raw_zone_mj.name
  name = "gc-raw-${var.environment}-${var.account_number}-${var.student_initials}-${var.student_index_no}"
  role = aws_iam_role.glue_crawler_role_mj.arn
  table_prefix = "crawler_"
  s3_target {
    path = "s3://${aws_s3_bucket.s3_bucket_mj.bucket}/raw-zone/stockdata/"
  }
}