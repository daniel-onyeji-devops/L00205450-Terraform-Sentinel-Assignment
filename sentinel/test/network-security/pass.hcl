
# Verify that SSH access from a private network is approved
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
