resource "aws_glue_catalog_database" "datalake_db_raw_zone_mj" {
  name = "datalake_${var.environment}_${var.account_number}_${var.student_initials}_${var.student_index_no}"
}

