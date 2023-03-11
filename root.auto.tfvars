project_name            = "orieja"
region                  = "eu-west-3"
vpc_cidr                = "10.0.0.0/16"
user_arn                = "arn:aws:iam::940373101182:user/terraform-1"
enable_dns_support      = "true"
enable_dns_hostnames    = "true"
public_subnets          = ["10.0.1.0/24", "10.0.2.0/24"]
compute_private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
data_private_subnets    = ["10.0.5.0/24", "10.0.6.0/24"]
root_domain_name        = "orieja.com.ng"
domain_subnet_1         = "wordpress"
domain_subnet_2         = "tooling"
environment             = "dev"
ami_bastion             = "ami-0653904d9c687d595"
ami_web                 = "ami-06f159bfa7b415716"
ami_nginx               = "ami-01abcf051c129c12d"
ami_sonar               = "ami-05b59ffa491b7a58e"
master-username         = "admin"
master-password         = "password"
db_name                 = "wordpressdb"
keypair                 = "terra_16"
access_point            = ["tooling", "wordpress"]

health_grace_period_asg = {
  bastion   = 300,
  nginx     = 300,
  tooling   = 300,
  wordpress = 300
}

capacity_asg = {
  bastion   = 2,
  nginx     = 2,
  tooling   = 2,
  wordpress = 2
}

tag = {
  Owner-Email     = "femi@strangenig.com",
  Managed-By      = "terraform",
  Billing-Account = "940373101182"
}
