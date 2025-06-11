terraform {
  backend "s3" {
    bucket = "truong-msk-terraform-state"
    key    = "sample/msk-github/terraform.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}

provider "aws" {
  region     = var.region_name
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "msk" {
  source = "../../modules/msk"

  aws_access_key                                  = var.aws_access_key
  aws_secret_key                                  = var.aws_secret_key
  vpc_id                                          = var.vpc_id
  subnets_in_vpc                                  = var.subnets_in_vpc
  msk_cluster_name                                = var.msk_cluster_name
  region_name                                     = var.region_name
  Kafka_version                                   = var.Kafka_version
  number_of_broker_nodes                          = var.number_of_broker_nodes
  instance_type                                   = var.instance_type
  ebs_volume_size                                 = var.ebs_volume_size
  enable_open_monitoring_prometheus_jmx_exporter  = var.enable_open_monitoring_prometheus_jmx_exporter
  enable_open_monitoring_prometheus_node_exporter = var.enable_open_monitoring_prometheus_node_exporter
  enable_logging_info_broker_logs_cloudwatch_logs = var.enable_logging_info_broker_logs_cloudwatch_logs
}