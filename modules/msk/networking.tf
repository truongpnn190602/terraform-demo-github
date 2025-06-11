# # create new vpc
# resource "aws_vpc" "msk_vpc" {
#   cidr_block = "12.0.0.0/16"

#   tags = {
#     Name = "${var.msk_cluster_name}-vpc"
#   }
# }

# # Get the available AZ in the specific region. 
# # Defaults to the Region set in the provider configuration
# data "aws_availability_zones" "azs" {
#   state = "available"
# }

# #  create new subnet
# resource "aws_subnet" "subnet_in_az_1" {
#   vpc_id               = aws_vpc.msk_vpc.id
#   cidr_block           = "12.0.1.0/24"
#   availability_zone_id = data.aws_availability_zones.azs.names[0]
#   tags = {
#     Name = "${var.msk_cluster_name}-subnet"
#   }
# }

# resource "aws_subnet" "subnet_in_az_2" {
#   vpc_id               = aws_vpc.msk_vpc.id
#   cidr_block           = "12.0.2.0/24"
#   availability_zone_id = data.aws_availability_zones.azs.names[1]
#   tags = {
#     Name = "${var.msk_cluster_name}-subnet"
#   }
# }

# resource "aws_subnet" "subnet_in_az_3" {
#   vpc_id               = aws_vpc.msk_vpc.id
#   cidr_block           = "12.0.3.0/24"
#   availability_zone_id = data.aws_availability_zones.azs.names[2]
#   tags = {
#     Name = "${var.msk_cluster_name}-subnet"
#   }
# }


data "aws_vpc" "exist_vpc" {
  id = var.vpc_id
}