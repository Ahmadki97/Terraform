# output "Micro_VPC_Id" {
#   value       = module.VPC.Micro_VPC_Id
# }

output "private_key_pem" {
  value     = module.EC2.private_key_pem
  sensitive = true
}

output "oidc_arn" {
  value = module.EKS.oidc-arn
}

