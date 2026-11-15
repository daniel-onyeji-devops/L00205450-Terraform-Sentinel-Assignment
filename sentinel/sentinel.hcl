
# Register our EBS encryption policy
policy "encryption" {
  source            = "./encryption.sentinel"
  enforcement_level = "hard-mandatory"
}

# Supply a simulated Terraform plan for local testing
mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-v2.sentinel"
  }
}

# Enforce approved AWS geographical regions
policy "sovereignty" {
  source            = "./sovereignty.sentinel"
  enforcement_level = "hard-mandatory"
}

# Supply sample AWS provider settings for sovereignty testing
mock "tfconfig/v2" {
  module {
    source = "./mock-tfconfig-v2.sentinel"
  }
}

# Enforce approved Terraform providers and modules
policy "supply-chain" {
  source            = "./supply-chain.sentinel"
  enforcement_level = "hard-mandatory"
}

# Enforce approved AWS EC2 instance types
policy "ec2-security" {
  source            = "./ec2-security.sentinel"
  enforcement_level = "hard-mandatory"
}

# Require IMDSv2 for AWS EC2 instances
policy "imdsv2" {
  source            = "./imdsv2.sentinel"
  enforcement_level = "hard-mandatory"
}

# Prevent public access to sensitive remote-access ports
policy "network-security" {
  source            = "./network-security.sentinel"
  enforcement_level = "hard-mandatory"
}
