
# Create an encrypted storage volume in Ireland
resource "aws_ebs_volume" "secure_storage" {
  availability_zone = "eu-west-1a"
  size              = 8
  encrypted         = true

  tags = {
    Name    = "L00205450-Secure-Storage"
    Project = "Digital-Sovereignty"
  }
}
