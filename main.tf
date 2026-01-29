module "eks_cluster" {
  source = "./modules/eks-cluster"

  cluster_name = "ayman-eks"
  region       = "us-east-1"
}
