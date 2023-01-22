locals {
  owners = var.sosotech_corporate_division
  environment = var.environment
  name = "${var.sosotech_corporate_division}-${var.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
  eks_cluster_name = "${local.name}-${var.cluster_name}"  
} 