provider "aws" {
  region     = "" # Choose your desired AWS region
  access_key = ""
  secret_key = ""
}

provider "kubernetes" {
  host                   = module.EKS.eks-cluster-endpoint
  cluster_ca_certificate = base64decode(module.EKS.eks-cluster-ca)
  token                  = module.EKS.eks-cluster-token

}

provider "helm" {
  kubernetes {
    host                   = module.EKS.eks-cluster-endpoint
    cluster_ca_certificate = base64decode(module.EKS.eks-cluster-ca)
    token                  = module.EKS.eks-cluster-token
  }
}


