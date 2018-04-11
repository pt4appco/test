resource "aws_subnet" "PublicAppko" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "${var.Subnet-Public-Appko-CIDR}"
  tags {
        Name = "PublicAppko"
  }
 availability_zone = "${data.aws_availability_zones.available.names[0]}"
}
resource "aws_route_table_association" "PublicAppko" {
    subnet_id = "${aws_subnet.PublicAppko.id}"
    route_table_id = "${aws_route_table.public.id}"
}
