resource "aws_instance" "ec2" {
  count = 2
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "${var.env}-instance"
  }
}