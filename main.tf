module "eks_cluster" {
  source = "./modules/eks-cluster"

  cluster_name = "ayman-eks"
  region       = "us-east-1"
}

module "eks_nodes" {
  source = "./modules/eks-node-group"

  cluster_name    = module.eks_cluster.cluster_name
  node_role_arn   = module.eks_cluster.eks_node_role_arn
  subnet_ids      = module.eks_cluster.private_subnets

  min_size        = 2
  max_size        = 4
  desired_size    = 2
  instance_type   = "t3.medium"
}
