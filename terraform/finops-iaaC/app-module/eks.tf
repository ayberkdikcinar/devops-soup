
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"


  cluster_name    = var.eks-cluster-name
  cluster_version = "1.27"

  vpc_id     = aws_vpc.vpc-finops.id
  subnet_ids = [aws_subnet.private-1a.id, aws_subnet.private-1b.id]

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      name = "eks-node-group-1"

      instance_types = ["${var.instance_type_small}"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }

    two = {
      name = "eks-node-group-2"

      instance_types = ["${var.instance_type_small}"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }

}


resource "aws_security_group_rule" "eks_ingress_from_bastion" {
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.bastion.id
  security_group_id        = module.eks.cluster_security_group_id
}
