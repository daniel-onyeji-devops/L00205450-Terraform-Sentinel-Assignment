
# Test that AWS infrastructure outside Ireland is rejected
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
