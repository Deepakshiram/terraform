resource "aws_instance" "ec2-id" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

}

resource "aws_key_pair" "keypair" {
  key_name   = "aws-terraform"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7FehvAUjS2LRAhYoLfMev5DwpHuWtCygkOghnkU6MBIZiHItY1m4GovTK+9KLkGJhQYxo1m3Wvv7c+A51Sk65XBhZScfxsfjnCpq2GopdqH1QsR50LDreEa97T6066NCDAGrCb0MhrVVLXZLyNbO8KNcDZ8x3QhxY2LcKM/j7pIvlJ5UgMgZ7O1OMlOX6li/Iw0Fj5QpYxlHk/JpX8E54BQW0dch/V9lpy0WaYoEo+6s3gnxxhgNCEIg2toGEE6I3/lf/NDQzCmSuh/y5a4un8dR+1C0M5mAcYyU1UlFT7nwVijGvxzzNeMAIUVnBBtiHfOdVXPbllP7MQoWp2HgzZ2vFdg4hOuf4crdAvUDzVa7rp8rneLBMwG/WIk/fnxPyJsFWkm04ug+chevfSrd1m6W6XbvTYZDUK5Qrr7pNyInp5VnrNIoOwPpWPExgqKNJEg8937PLWasPzytnG+lVHN2fzjbcmKQd0NqpL3YyomtNY2fudE+8SFPaaO0HUe8= mr.ram@Jarvis"
}