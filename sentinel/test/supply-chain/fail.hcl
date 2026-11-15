
# Test that an unapproved Terraform provider is rejected
mock "tfconfig/v2" {
  module {
    source = "./mock-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
