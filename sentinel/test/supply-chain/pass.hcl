
# Test that the approved AWS provider is accepted
mock "tfconfig/v2" {
  module {
    source = "../../mock-tfconfig-v2.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}

