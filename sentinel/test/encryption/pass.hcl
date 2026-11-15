
# Test that encrypted EBS storage is approved
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
