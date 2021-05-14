resource "aws_kinesis_stream" "cryptostock_stream_mj" {
  name = "cryptostock-${var.environment}-${var.account_number}-${var.student_initials}-${var.student_index_no}"
  shard_count = 1
  enforce_consumer_deletion = true
  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
    "IncomingRecords",
    "OutgoingRecords"
  ]
  tags = {
    Purpose = "UAM Cloud Data Processing"
    Environment = "DEV"
    Owner = var.student_full_name
  }
}
