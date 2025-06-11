variable "aws_access_key" {
  description = "This is the AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "This is the AWS secret key"
  type        = string
}

variable "vpc_id" {
  description = "The VPC id value that resources is allocated in"
  type        = string
  default     = "vpc-0ee4c1a66725b1d42"
}

variable "subnets_in_vpc" {
  description = "value"
  type        = list(string)
  default = [
    "subnet-03edaa1eef7f2a3e7",
    "subnet-010894193d47a0ce9",
  ]
}

variable "msk_cluster_name" {
  description = "AWS MSK cluster name"
  type        = string
  default     = "truong-msk"
}

variable "region_name" {
  description = "AWS region for the ap-southeast VPC"
  type        = string
  default     = "ap-southeast-1"
}

variable "Kafka_version" {
  description = "Default Kafka Version for MSK cluster"
  type        = string
  default     = "3.6.0"
}

variable "number_of_broker_nodes" {
  description = "Default the numbers of broker nodes"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Default instance for MSK cluster"
  type        = string
  default     = "kafka.t3.small"
}

variable "ebs_volume_size" {
  description = "Default ebs volume size for MSK cluster"
  type        = number
  default     = 300
}

variable "enable_open_monitoring_prometheus_jmx_exporter" {
  description = "Enable/disable prometheus jmx exporter monitoring"
  type        = bool
  default     = true
}

variable "enable_open_monitoring_prometheus_node_exporter" {
  description = "Enable/disable prometheus node exporter monitoring"
  type        = bool
  default     = true
}

variable "enable_logging_info_broker_logs_cloudwatch_logs" {
  description = "Enable/disable broker cloudwatch logs"
  type        = bool
  default     = true
}