variable "cluster_name" {
  type = string
}

variable "cluster_endpoint" {
  type = string
}

variable "openid_provider_arn" {
  type = string
}

variable "eks_name" {
  type = string
}

variable "cluster_id" {
  type = string
}

variable "cluster_data_endpoint" {
  type = string
}

variable "cluster_auth_token" {
  type = string
  sensitive = true
}

variable "cluster_certificate_authority" {
  type = string
}

data "aws_eks_cluster" "this" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "this" {
  name = var.cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.this.endpoint
  token                  = data.aws_eks_cluster_auth.this.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.this.certificate_authority[0].data)
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.this.endpoint
    token                  = data.aws_eks_cluster_auth.this.token
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.this.certificate_authority[0].data)
  }
}