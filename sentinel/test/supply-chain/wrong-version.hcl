
# Verify that an unapproved AWS provider version is rejected

mock "tfconfig/v2" {
  module {
    source = "./mock-wrong-version.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
