
# Test that an unapproved EC2 instance type is rejected
mock "tfplan/v2" {
  module {
    source = "./mock-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
