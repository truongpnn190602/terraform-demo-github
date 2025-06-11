# create new kms key
resource "aws_kms_key" "msk_cluster_kms" {
  description = "The key for MSK cluster"
  tags = {
    Name = "${var.msk_cluster_name}-kms"
  }
}

# create new MSK cluster security group
resource "aws_security_group" "msk_cluster_security_group" {
  name        = "${var.msk_cluster_name}-msk_cluster_security_group"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.exist_vpc.id

  tags = {
    Name = "${var.msk_cluster_name}-msk-sg"
  }
}


# Define inbound rule
resource "aws_vpc_security_group_ingress_rule" "allow_http_ipv4" {
  security_group_id = aws_security_group.msk_cluster_security_group.id
  cidr_ipv4         = data.aws_vpc.exist_vpc.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
  tags = {
    Name = "${var.msk_cluster_name}-inbound-rule"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_https_ipv4" {
  security_group_id = aws_security_group.msk_cluster_security_group.id
  cidr_ipv4         = data.aws_vpc.exist_vpc.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  tags = {
    Name = "${var.msk_cluster_name}-inbound-rule"
  }
}