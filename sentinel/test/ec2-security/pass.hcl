
# Test that an approved EC2 instance type is accepted
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
