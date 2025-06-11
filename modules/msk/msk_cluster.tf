# create new MSK cluster
resource "aws_msk_cluster" "msk_cluster" {
  cluster_name           = var.msk_cluster_name
  kafka_version          = var.Kafka_version
  number_of_broker_nodes = var.number_of_broker_nodes

  broker_node_group_info {
    instance_type  = var.instance_type
    client_subnets = var.subnets_in_vpc

    storage_info {
      ebs_storage_info {
        volume_size = var.ebs_volume_size
      }
    }

    security_groups = [aws_security_group.msk_cluster_security_group.id]
  }

  encryption_info {
    encryption_in_transit {
      client_broker = "PLAINTEXT"
    }
  }

  open_monitoring {
    prometheus {
      jmx_exporter {
        enabled_in_broker = var.enable_open_monitoring_prometheus_jmx_exporter
      }
      node_exporter {
        enabled_in_broker = var.enable_open_monitoring_prometheus_node_exporter
      }
    }
  }

  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled   = var.enable_logging_info_broker_logs_cloudwatch_logs
        log_group = aws_cloudwatch_log_group.msk_cloudwatch_log_group.name
      }
    }
  }

  tags = {
    Name = "${var.msk_cluster_name}-msk-cluster"
  }
}
