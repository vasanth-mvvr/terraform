module "aws_vpc" {
  source = "../terraform_aws_vpc"
  project = var.project
  environment = var.environment
  common_tags = var.common_tags
  public_subnet_cidrs = var.public_subnet
  private_subnet_cidrs = var.private_subnet
  database_subnet_cidrs = var.database_subnet
  is_peering_required = var.is_peering_required
}