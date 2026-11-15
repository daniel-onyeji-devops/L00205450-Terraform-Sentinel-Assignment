
# Test that AWS Ireland is an approved region
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
