resource "aws_vpc_peering_connection" "vpc" {
  count = var.is_peering_required ? 1: 0
  vpc_id = aws_vpc.main.id    ## requestor
  peer_vpc_id = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id : var.acceptor_vpc_id   
  auto_accept = var.acceptor_vpc_id == "" ? true : false
}

resource "aws_route" "public_peering" {
  count = var.is_peering_required && var.acceptor_vpc_id== "" ? 1 : 0
  route_table_id = aws_route_table.public.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc[0].id
}

resource "aws_route" "private_peering" {
  count = var.is_peering_required && var.acceptor_vpc_id == "" ? 1: 0
  route_table_id = aws_route_table.private.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc[0].id
}

resource "aws_route" "database-peering" {
  count = var.is_peering_required && var.acceptor_vpc_id== "" ?1:0
  route_table_id = aws_route.database.id
  destination_cidr_block = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc[0].id
}

resource "aws_route" "default-peering" {
  count = var.is_peering_required && var.acceptor_vpc_id == "" ? 1 : 0
  route_table_id = data.aws_route_table.main.id
  destination_cidr_block = var.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc[0].id
}