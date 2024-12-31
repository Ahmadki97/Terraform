# Service Account for the Load Balancer
resource "kubernetes_service_account" "awslb" {
  metadata {
    name      = "awslb"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.awslb-controller-role.arn
    }
  }
}

# Service Account for the External DNS
resource "kubernetes_service_account" "external-dns" {
  metadata {
    name      = "external-dns-sa"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.ExternalDNSServiceAccountRole.arn
    }
  }
}
