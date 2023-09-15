#vpc
region                           = "us-east-1"
vpc_cidr_block                   = "10.0.0.0/16"
instance_tenancy                 = "default"
enable_dns_hostnames             = false
enable_dns_support               = false
assign_generated_ipv6_cidr_block = false
//ec2
ami           = "ami-04cb4ca688797756f"
instance_type = "t2.micro"

