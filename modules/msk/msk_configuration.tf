# create new MSK configuration
resource "aws_msk_configuration" "msk_configuration" {
  kafka_versions = [var.Kafka_version]
  name           = var.msk_cluster_name

  server_properties = <<PROPERTIES
auto.create.topics.enable = true
default.replication.factor = 2
min.insync.replicas = 2
num.io.threads = 8
num.network.threads = 5
num.partitions = 1
num.replica.fetchers = 2
replica.lag.time.max.ms = 30000
socket.receive.buffer.bytes = 102400
socket.request.max.bytes = 104857600
socket.send.buffer.bytes = 102400
unclean.leader.election.enable = false
log.retention.ms = 604800000
PROPERTIES
}