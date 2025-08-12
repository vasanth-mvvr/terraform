resource "aws_vpc_peering_connection" "vpc" {
  count = var.is_peering_required ? 1: 0
  vpc_id = aws_vpc.main.id    ## requestor
  peer_vpc_id = var.acceptor_vpc_id == "" ? data.aws_vpc.default.id : var.acceptor_vpc_id   
  auto_accept = var.acceptor_vpc_id == "" ? true : false
}