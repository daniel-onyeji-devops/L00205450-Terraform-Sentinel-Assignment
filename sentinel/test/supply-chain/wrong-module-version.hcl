
# Verify that an unapproved module version is rejected

mock "tfconfig/v2" {
  module {
    source = "./mock-wrong-module-version.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
