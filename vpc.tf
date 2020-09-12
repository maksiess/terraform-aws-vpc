resource "aws_vpc" "team2_vpc" {
  cidr_block = "${var.cidr_block}"
  tags       = "${var.tags}"
}
