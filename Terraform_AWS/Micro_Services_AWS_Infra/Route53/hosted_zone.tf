resource "aws_route53_zone" "Micro_Hosted_Zone" {
  name = "markettest.store" # Replace with your desired domain name
  vpc {
    vpc_id = var.vpc_id
  }
  tags = {
    name = "Micro Hosted Zone"
  }
}


