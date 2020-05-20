# AWS region where should the Minikube be deployed
aws_region = "us-east-1"

# Name for role, policy and cloud formation stack (without DBG-DEV- prefix)
cluster_name = "dev.agones.minikube"

# Instance type
aws_instance_type = "t2.medium"

# SSH key for the machine
ssh_public_key = "~/.ssh/id_rsa.pub"

# Subnet ID where the minikube should run
aws_subnet_id = "subnet-0f47f5596b2717782"

# DNS zone where the domain is placed
hosted_zone = "xrchat.dev"
hosted_zone_private = false

# AMI image to use (if empty or not defined, latest CentOS 7 will be used)
#ami_image_id = "ami-0d6621c01e8c2de2c"
#ami_image_id="ami-b81dbfc5"

# Tags
tags = {
  Application = "Agones Minikube for Dev"
}

# Kubernetes Addons
# Supported addons:
# 
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress.yaml (External ELB load balancer)
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress-internal.yaml (Internal ELB loadbalancer)

addons = [
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/metrics-server.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
]
