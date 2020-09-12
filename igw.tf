resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.team2_vpc.id}"
  tags   = "${var.tags}"
}
