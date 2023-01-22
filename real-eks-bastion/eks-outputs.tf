# EKS Cluster Outputs
output "cluster_id" {
  value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_arn" {
  value       = aws_eks_cluster.eks_cluster.arn
}

output "cluster_certificate_authority_data" {
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_endpoint" {
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_version" {
  value       = aws_eks_cluster.eks_cluster.version
}

output "cluster_iam_role_name" {
  description = "IAM role name for EKS cluster."
  value       = aws_iam_role.sosotech_eks_master_role.name 
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster."
  value       = aws_iam_role.sosotech_eks_master_role.arn
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster OIDC Issuer"
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_primary_security_group_id" {
  value       = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}

# EKS Node Group Outputs - Public
output "node_group_public_id" {
  description = "Public Node Group ID"
  value       = aws_eks_node_group.eks_ng_public.id
}

output "node_group_public_status" {
  description = "Public Node Group status"
  value       = aws_eks_node_group.eks_ng_public.status 
}

output "node_group_public_arn" {
  description = "Public Node Group ARN"
  value       = aws_eks_node_group.eks_ng_public.arn
}

output "node_group_public_version" {
  description = "Public Node Group Kubernetes Version"
  value       = aws_eks_node_group.eks_ng_public.version
}

