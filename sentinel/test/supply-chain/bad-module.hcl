
# Verify that an unapproved Terraform module is rejected
mock "tfconfig/v2" {
  module {
    source = "./mock-bad-module.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
