# modules/eks-node-group/outputs.tf

output "node_group_name" {
  value = aws_eks_node_group.workers.node_group_name
}

output "node_instance_type" {
  value = var.instance_type
}

output "desired_node_count" {
  value = var.desired_size
}