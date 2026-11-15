
# Verify that an EC2 instance requiring IMDSv2 is approved
mock "tfplan/v2" {
  module {
    source = "../../mock-tfplan-v2.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
