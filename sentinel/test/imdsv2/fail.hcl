
# Verify that an EC2 instance allowing IMDSv1 is rejected
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
