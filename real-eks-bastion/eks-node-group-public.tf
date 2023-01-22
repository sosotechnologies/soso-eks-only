# EKS Node Group - Public
resource "aws_eks_node_group" "eks_ng_public" {
  cluster_name    = aws_eks_cluster.eks_cluster.name

  node_group_name = "${local.name}-eks-ng-public"
  node_role_arn   = aws_iam_role.sosotech_eks_nodegroup_role.arn
  subnet_ids      = module.vpc.public_subnets
  
  ami_type = "AL2_x86_64"  
  capacity_type = "ON_DEMAND"
  disk_size = 20
  instance_types = ["t2.medium"]
  
  
  remote_access {
    ec2_ssh_key = "sosodevops-key"
  }

  scaling_config {
    desired_size = 1
    min_size     = 1    
    max_size     = 2
  }

  update_config {
    max_unavailable = 1    
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks-AmazonEC2ContainerRegistryReadOnly,
  ] 

  tags = {
    Name = "Public-Node-Group"
  }
}
