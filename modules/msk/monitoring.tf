#  create new cloudwatch group
resource "aws_cloudwatch_log_group" "msk_cloudwatch_log_group" {
  name = "${var.msk_cluster_name}-msk_broker_logs"

  tags = {
    Name = "${var.msk_cluster_name}-cloudwatch-log-group"
  }
}

