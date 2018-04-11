resource "aws_instance" "testinstance" {
  ami = "${lookup(var.Ubuntu16, var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.PublicAppko.id}"
  vpc_security_group_ids = ["${aws_security_group.FrontEnd.id}"]
  key_name = "${var.key_name}"
  tags {
        Name = "testinstance"
  }
  user_data = "${file("postinstall.txt")}"
}
