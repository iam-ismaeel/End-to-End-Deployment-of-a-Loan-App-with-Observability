#create an elastic ip for the purpose of our NAT gateway
resource "aws_eip" "this" {
  domain = "vpc"

  tags = {
    Name = "${var.env}-nat"
  }
}

#NAT-Gateway
resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id = aws_subnet.az_public_subnet[0].id

  tags = {
    Name = "${var.env}-nat"
  }
  depends_on = [aws_internet_gateway.this]
}
